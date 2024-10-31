<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Data Kenaikan</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
    <div class="container">
        <h2 class="mt-4">Data Kenaikan</h2>
        @if (session('success'))
            <script>
                Swal.fire({
                    icon: "success",
                    title: "Berhasil",
                    text: "{{ session('success') }}",
                });
            </script>
        @endif
        <div class="d-flex justify-content-between mb-3">
            <a href="{{ route('kenaikan.create') }}" class="btn btn-primary mb-3">Tambah Kenaikan</a>
            <a href="{{ route('kenaikan.export', ['naik_kelas' => request('naik_kelas')]) }}"
                class="btn btn-success mb-3">Export</a>
            <a href="{{ route('dashboard') }}" class="btn btn-secondary mb-3">Kembali</a>
        </div>

        <div class="d-flex w-full justify-content-between">
            <form method="GET" action="{{ route('kenaikan.index', ['kelas_asal' => $kelas_asal, 'kelas_tujuan' => $kelas_tujuan]) }}"
                class="mb-3">
                <input type="text" name="kelas_asal" value="{{$kelas_asal}}" hidden>
                <input type="text" name="kelas_tujuan" value="{{$kelas_tujuan}}" hidden>
                <label for="naik_kelas">Status</label>
                <select name="naik_kelas" class="form-control w-full" onchange="this.form.submit()">
                    <option value="all" selected>Semua</option>
                    <option value="1" {{ request('naik_kelas') == '1' ? 'selected' : '' }}>Naik Kelas</option>
                    <option value="0" {{ request('naik_kelas') == '0' ? 'selected' : '' }}>Tidak Naik Kelas</option>
                </select>
            </form>
            <form method="GET" action="{{ route('kenaikan.index', ['kelas_asal' => $kelas_asal, 'kelas_tujuan' => $kelas_tujuan]) }}"
                class="mb-3">
                <input type="text" name="kelas_tujuan" value="{{$kelas_tujuan}}" hidden>
                <input type="text" name="naik_kelas" value="{{$naik_kelas}}" hidden>
                <label for="kelas_asal">Kelas Asal</label>
                <select name="kelas_asal" class="form-control w-full" onchange="this.form.submit()">
                    <option value="all">Kelas Asal</option>
                    @foreach ($kelas as $k)
                        <option value="{{ $k->id }}" @selected($k->id == request('kelas_asal'))>{{ $k->nama_kelas }}</option>
                    @endforeach
                </select>
            </form>
            <form method="GET" action="{{ route('kenaikan.index', ['kelas_asal' => $kelas_asal, 'kelas_tujuan' => $kelas_tujuan]) }}"
                class="mb-3">
                <input type="text" name="naik_kelas" value="{{$naik_kelas}}" hidden>
                <input type="text" name="kelas_asal" value="{{$kelas_asal}}" hidden>
                <label for="kelas_tujuan">Kelas Tujuan</label>
                <select name="kelas_tujuan" class="form-control w-full" onchange="this.form.submit()">
                    <option value="all">Kelas Tujuan</option>
                    @foreach ($kelas as $k)
                        <option value="{{ $k->id }}" @selected($k->id == request('kelas_tujuan'))>{{ $k->nama_kelas }}</option>
                    @endforeach
                </select>
            </form>
        </div>

        <!-- Pencarian Kenaikan -->
        <form method="GET" action="{{ route('kenaikan.index') }}" class="mb-3">
            <input type="text" name="search" class="form-control" placeholder="Cari Kenaikan..." id="inputSearch">
        </form>

        <table class="table" id="tableKenaikan">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nama Siswa</th>
                    <th>Tahun Ajaran</th>
                    <th>Status</th>
                    <th>Kelas Asal</th>
                    <th>Kelas Tujuan</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($kenaikan as $k)
                    <tr>
                        <td>{{ $k->id }}</td>
                        <td>{{ $k->siswa->nama }}</td>
                        <td>{{ $k->tahun_ajaran }}</td>
                        <td>{{ $k->naik_kelas ? 'Naik Kelas' : 'Tidak Naik Kelas' }}</td>
                        <td>{{ $k->kelasAsal->nama_kelas }}</td>
                        <td>{{ $k->kelasTujuan->nama_kelas }}</td>
                        <td>
                            <a href="{{ route('kenaikan.edit', $k->id) }}" class="btn btn-warning">Edit</a>
                            <form action="{{ route('kenaikan.destroy', $k->id) }}" method="POST"
                                style="display:inline;">
                                @csrf
                                @method('DELETE')
                                <button class="btn btn-danger" type="submit">Hapus</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
            {{ $kenaikan->links() }}
        </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        const input = document.getElementById('inputSearch');

        // Mengganti 'change' dengan 'input' agar event dipicu saat pengguna mengetik
        input.addEventListener('input', updateValue);

        function updateValue(event) {
            // fetch to /kenaikan/search?search={input.value}
            fetch('/kenaikan/search?search=' + event.target.value)
                .then(response => response.text())
                .then(html => {
                    document.getElementById('tableKenaikan').innerHTML = html;
                });
        }
    </script>
</body>

</html>
