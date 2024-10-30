<?php

namespace App\Exports;

use App\Models\Kenaikan;
use Illuminate\Support\Facades\Log;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class KenaikanExport implements FromView, ShouldAutoSize
{
    protected $naik_kelas;

    public function __construct($naik_kelas = 'all')
    {
        $this->naik_kelas = $naik_kelas;
    }
    public function view(): View
    {
        try {
            Log::info('KenaikanExport view method called');
            Log::info("Naik kelas: {$this->naik_kelas}");

            $query = Kenaikan::with(['kelasAsal', 'kelasTujuan', 'siswa']);
            $naik_kelas = $this->naik_kelas;

            $query->when($this->naik_kelas && $this->naik_kelas !== 'all', function ($query) {
                $query->where('naik_kelas', $this->naik_kelas);
            });
    
            $kenaikan = $query->get();

            Log::info("Total kenaikan retrieved: " . $kenaikan->count());

            return view('exports.kenaikan', [
                'kenaikan' => $kenaikan
            ]);
        } catch (\Exception $e) {
            Log::error('Error in kenaikanExport: ' . $e->getMessage());
            throw $e;
        }
    }
}
