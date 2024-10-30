<?php

namespace App\Imports;

use App\Models\Kelas;
use App\Models\Siswa;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Carbon\Carbon;
use DateTime;
use Illuminate\Support\Facades\Log;

class SiswaImport implements ToModel, WithHeadingRow
{
    public function model(array $row)
    {

        // dd($row);
        return new Siswa([
            'nama'          => $row['nama'],
            'gender'        => $row['gender'],
            'tanggal_lahir' => $this->convertDate($row['tanggal_lahir']), // Converts date
            // 'tanggal_lahir' => $row['tanggal_lahir'], // Converts date
            'alamat'        => $row['alamat'],
            'no_telepon'    => $row['no_telepon'],
            'tanggal_masuk' => $this->convertDate($row['tanggal_masuk']), // Converts date
            // 'tanggal_masuk' => $row['tanggal_masuk'], // Converts date
            'status'        => $row['status'],
            'id_kelas'      => $this->getIdKelas($row['kelas']), // Pastikan ID kelas ini sesuai dengan kelas yang ada
        ]);
    }

    public function headings(): array
    {
        return [
            'Nama',
            'Gender',
            'Tanggal Lahir',
            'Alamat',
            'No Telepon',
            'Tanggal Masuk',
            'Status',
            'ID Kelas',
        ];
    }

    private function getIdKelas($namaKelas)
    {
        return Kelas::where('nama_kelas', $namaKelas)->first()->id;
    }

    private function convertDate($date)
    {
        try {
            Log::info('tanggal; ' . $date);
            // Mengonversi tanggal ke string format Y-m-d
            if ($date instanceof \DateTime) {
                Log::info('konvert format');
                return $date->format('Y-m-d'); // Konversi ke format string
            }
            Log::info('convert menggunakan karbon');
            // Menggunakan Carbon untuk mengonversi dari format Excel atau string
            $dateObject = DateTime::createFromFormat('d-m-Y', $date);
            return $dateObject ? Carbon::instance($dateObject)->format('Y-m-d') : null;
        } catch (\Throwable $th) {
            Log::info($th->getMessage());
            abort(redirect()->back()->with('error', 'Terjadi kesalahan: ' . $th->getMessage()));
        }
    }
}
