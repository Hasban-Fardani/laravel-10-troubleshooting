<?php

namespace App\Imports;

use App\Models\Kelas;
use App\Models\Kenaikan;
use App\Models\Siswa;
use Carbon\Carbon;
use DateTime;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class KenaikanImport implements ToModel, WithHeadingRow
{
    public function model(array $row)
    {
        Log::info('Mengimport data kenaikan');
        Log::info($row);
        return new Kenaikan([
            'id_siswa'        => $this->getIdSiswa($row['siswa']),
            'tahun_ajaran'    => $row['tahun_ajaran'],
            'kelas_asal'      => $this->getIdKelas($row['kelas_asal']),
            'kelas_tujuan'    => $this->getIdKelas($row['kelas_tujuan']),
            'naik_kelas'      => $row['naik_kelas'] == 'Naik Kelas' ? 1 : 0,
        ]);
    }

    public function headings(): array
    {
        return [
            'Siswa',
            'Tahun Ajaran',
            'Kelas Asal',
            'Kelas Tujuan',
            'Naik Kelas',
        ];
    }

    private function getIdKelas($namaKelas)
    {
        return Kelas::where('nama_kelas', $namaKelas)->first()->id;
    }

    private function getIdSiswa($namaSiswa)
    {
        return Siswa::where('nama', $namaSiswa)->first()->id;
    }
}
