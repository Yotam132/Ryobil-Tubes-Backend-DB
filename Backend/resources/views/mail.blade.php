<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>Aktifkan Akun Anda, Mulai Menggunakan Ryobil!!</h2>
    <p>Selamat Datang!, {{$detail['body']}}</p> <br>

    <a href="http://ryobilapi.ryobil.xyz/api/verificate/{{$detail['idUser']}}"> Klik Disini Untuk Verifikasi!</a>

    <p> Atau Silahkan Copy Link dibawah ini</p><br>
    <p>http://ryobilapi.ryobil.xyz/api/verificate/{{$detail['idUser']}}</p>
</body>
</html>