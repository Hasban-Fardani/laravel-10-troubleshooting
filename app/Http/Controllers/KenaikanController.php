<?php

namespace App\Http\Controllers;

use App\Exports\KenaikanExport;
use App\Imports\KenaikanImport;
use App\Models\Kelas;
use App\Models\Kenaikan; // asumsi Anda memiliki model Kenaikan
use App\Models\Siswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Facades\Excel;

class KenaikanController extends Controller
{
    public function index(Request $request)
    {
        $naik_kelas = $request->input('naik_kelas', 'all');
        $kenaikan = Kenaikan::with(['siswa', 'kelasAsal', 'kelasTujuan']);

        $kenaikan->when($naik_kelas !== 'all', function ($query) use ($naik_kelas) {
            $query->where('naik_kelas', $naik_kelas);
        });

        $kenaikan = $kenaikan->get();
        return view('kenaikan.index', compact('kenaikan', 'naik_kelas'));
    }

    public function create()
    {
        $siswa = Siswa::with('kelas')->get();
        $kelas = Kelas::all();
        return view('kenaikan.create', compact('siswa', 'kelas')); // Bukti form tambah kenaikan
    }

    public function store(Request $request)
    {
        $request->validate([
            'id_siswa' => 'required|exists:siswas,id',
            'tahun_ajaran' => 'required|string|min:9|max:9',
            'kelas_asal' => 'required|exists:kelas,id',
            'naik_kelas' => 'required|boolean',
            'kelas_tujuan' => 'required|exists:kelas,id',
        ]);

        Kenaikan::create($request->all());
        return redirect()->route('kenaikan.index')->with('success', 'Kenaikan berhasil ditambahkan');
    }

    public function edit(Kenaikan $kenaikan)
    {
        $siswa = Siswa::with('kelas')->get();
        $kelas = Kelas::all();
        return view('kenaikan.edit', compact('kenaikan', 'siswa', 'kelas')); // Bukti form edit kenaikan
    }

    public function update(Request $request, Kenaikan $kenaikan)
    {
        $request->validate([
            'id_siswa' => 'required|exists:siswas,id',
            'tahun_ajaran' => 'required|string|min:9|max:9',
            'kelas_asal' => 'required|exists:kelas,id',
            'naik_kelas' => 'required|boolean',
            'kelas_tujuan' => 'required|exists:kelas,id',
        ]);

        $kenaikan->update($request->all());
        return redirect()->route('kenaikan.index')->with('success', 'Kenaikan berhasil diperbarui');
    }

    public function destroy(Kenaikan $kenaikan)
    {
        $kenaikan->delete();
        return redirect()->route('kenaikan.index')->with('success', 'Kenaikan berhasil dihapus');
    }

    public function import(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,csv,xls' // Validasi file
        ]);

        try {
            Excel::import(new KenaikanImport, $request->file('file')); // Import file
        } catch (\Throwable $th) {
            Log::error($th->getMessage());
            return redirect()->back()->with('error', 'Your given data is not valid');
        }


        return redirect()->route('kenaikan.index')->with('success', 'Data kenaikan berhasil diimpor!');
    }


    public function export(Request $request)
    {
        Log::info('Export method called');
        $naik_kelas = $request->input('naik_kelas');

        return Excel::download(new KenaikanExport($naik_kelas), 'data_kenaikan.xlsx');
    }

    public function search(Request $request)
    {
        $kenaikan = Kenaikan::with(['kelasAsal', 'kelasTujuan', 'siswa']);
        $kenaikan->when($request->search, function ($query) use ($request) {
            $query->whereHas('siswa', function ($query) use ($request) {
                    $query->where('nama', 'like', '%' . $request->search . '%');
                })
                ->orWhereHas('kelasAsal', function ($query) use ($request) {
                    $query->where('nama_kelas', 'like', '%' . $request->search . '%');
                })
                ->orWhereHas('kelasTujuan', function ($query) use ($request) {
                    $query->where('nama_kelas', 'like', '%' . $request->search . '%');
                });
        });

        $kenaikan = $kenaikan->get();
        $kelas = Kelas::all();
        return view('kenaikan.table', compact('kenaikan', 'kelas'));
    }
}
