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
                    <form action="{{ route('kenaikan.destroy', $k->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button class="btn btn-danger" type="submit">Hapus</button>
                    </form>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>
