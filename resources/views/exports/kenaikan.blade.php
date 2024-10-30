<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Data Siswa</title>

    <style>
    table {
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid black;
        padding: 5px;
    }
    th {
        background-color: #f2f2f2;
        font-weight: bold;
    }
</style>

</head>
<body>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Siswa</th>
                <th>Naik Kelas</th>
                <th>Tahun Ajaran</th>
                <th>Asal Kelas</th>
                <th>Tujuan Kelas</th>
            </tr>
        </thead>
        <tbody>
            @foreach($kenaikan as $k)
            <tr>
                <td>{{ $k->id }}</td>
                <td>{{ $k->siswa->nama }}</td>
                <td>{{ $k->naik_kelas ? 'Naik Kelas' : 'Tidak Naik Kelas' }}</td>
                <td>{{ $k->tahun_ajaran }}</td>
                <td>{{ $k->kelasAsal->nama_kelas }}</td>
                <td>{{ $k->kelasTujuan->nama_kelas }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
