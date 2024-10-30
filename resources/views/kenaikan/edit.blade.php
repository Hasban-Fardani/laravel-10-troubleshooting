<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Edit Kenaikan</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
    @if ($errors->any())
        <script>
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "{{ $errors->first() }}",
            });
        </script>
    @endif
    <div class="container">
        <h2 class="mt-4">Edit Kenaikan</h2>
        <form action="{{ route('kenaikan.update', $kenaikan->id) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="form-group">
                <label for="id_siswa">ID Siswa</label>
                <select value="id_siswa" name="id_siswa" class="form-control">
                    @foreach ($siswa as $s)
                        <option value="{{ $s->id }}" @selected($kenaikan->id_siswa == $s->id)>{{ $s->id }} -
                            {{ $s->nama }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="tahun_ajaran">Tahun Ajaran</label>
                <input type="text" class="form-control" name="tahun_ajaran" id="tahun_ajaran"
                    value="{{ $kenaikan->tahun_ajaran }}" required>
            </div>

             <div class="form-group">
                <label for="naik_kelas">Kelas Asal</label>
                <select name="naik_kelas" id="naik_kelas" class="form-control">
                    @foreach ([['id' => 1, 'name'=>'Naik Kelas'], ['id' => 0, 'name'=>'Tidak Naik Kelas']] as $k)
                        <option value="{{ $k['id'] }}" @selected($kenaikan->naik_kelas == $k['id'])>{{ $k['name'] }}</option>
                    @endforeach
                </select>
            </div>

            <div class="form-group">
                <label for="kelas_asal">Kelas Asal</label>
                <select name="kelas_asal" id="kelas_asal" class="form-control">
                    @foreach ($kelas as $k)
                        <option value="{{ $k->id }}" @selected($kenaikan->kelas_asal == $k->id)>{{ $k->nama_kelas }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="kelas_tujuan">Kelas Tujuan</label>
                <select name="kelas_tujuan" id="kelas_tujuan" class="form-control">
                    @foreach ($kelas as $k)
                        <option value="{{ $k->id }}" @selected($kenaikan->kelas_tujuan == $k->id)>{{ $k->nama_kelas }}</option>
                    @endforeach
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Perbarui</button>
            <a href="{{ route('kenaikan.index') }}" class="btn btn-secondary">Kembali</a>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
