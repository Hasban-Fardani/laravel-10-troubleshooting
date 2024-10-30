<?php

namespace App\Http\Controllers;

use App\Imports\SiswaImport; // Import kelas yang kita buat untuk menghandle data import
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Facades\Excel;

class ImportSiswaController extends Controller
{
    public function import(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,csv,xls' // Validasi file
        ]);

        try {
            Excel::import(new SiswaImport, $request->file('file')); // Import file
        } catch (\Throwable $th) {
            Log::error($th->getMessage());
            return redirect()->back()->with('error', 'Your given data is not valid');
        }


        return redirect()->route('siswa.index')->with('success', 'Data siswa berhasil diimpor!');
    }
}
