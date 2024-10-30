<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Tambah kenaikan</title>
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
        <h2 class="mt-4">Tambah Kenaikan</h2>
        <form action="{{ route('kenaikan.store') }}" method="POST">
            @csrf
            <div class="form-group">
                <label for="id_siswa">ID Siswa</label>
                <select value="id_siswa" name="id_siswa" class="form-control">
                    @foreach ($siswa as $s)
                        <option value="{{ $s->id }}">{{ $s->id }} - {{ $s->nama }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="tahun_ajaran">Tahun Ajaran</label>
                <input type="text" class="form-control" name="tahun_ajaran" id="tahun_ajaran" required>
            </div>
            <div class="form-group">
                <label for="naik_kelas">Status</label>
                <select name="naik_kelas" id="naik_kelas" class="form-control">
                    <option value="1">Naik Kelas</option>
                    <option value="0">Tidak Naik Kelas</option>
                </select>
            </div>
            <div class="form-group">
                <label for="kelas_asal">Kelas Asal</label>
                <select name="kelas_asal" id="kelas_asal" class="form-control">
                    @foreach ($kelas as $k)
                        <option value="{{ $k->id }}">{{ $k->nama_kelas }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="kelas_tujuan">Kelas Tujuan</label>
                <select name="kelas_tujuan" id="kelas_tujuan" class="form-control">
                    @foreach ($kelas as $k)
                        <option value="{{ $k->id }}">{{ $k->nama_kelas }}</option>
                    @endforeach
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="{{ route('kenaikan.index') }}" class="btn btn-secondary">Kembali</a>
        </form>

        <hr>

        <h5 class="mt-4">Import Data Kenaikan</h5>
        <form action="{{ route('kenaikan.import') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="file">Pilih File Excel</label>
                <input type="file" class="form-control" name="file" id="file" accept=".xlsx,.xls,.csv"
                    required>
            </div>
            <button type="submit" class="btn btn-success">Import</button>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
