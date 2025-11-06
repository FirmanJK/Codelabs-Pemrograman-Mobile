# Laporan Praktikum

# 11 | Pemrograman Asynchronous

# Pemrograman Mobile

### Nama : Mochammad Firmandika Jati Kusuma

### NIM : 2341720229

## Praktikum 1: Mengunduh Data dari Web Service (API)

## Soal 1
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

Jawab :

![Langkah 3](assets/images/Praktikum1/Langkah3.jpg)

## Soal 2
- Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.

Jawab :

![Langkah 4](assets/images/Praktikum1/Langkah4.png)

- Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W11: Soal 2".
    
Jawab :

![Langkah 4](assets/images/Praktikum1/Langkah4.gif)

## Soal 3
- Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!

Jawab : Kode langkah 5 menggunakan substring(0, 450) untuk memotong response dari API Google Books agar hanya menampilkan 450 karakter pertama saja, karena data JSON lengkap dari API biasanya sangat panjang dan akan membuat tampilan berantakan. Sedangkan catchError berfungsi sebagai penangkap error yang akan menampilkan pesan "An error occurred" jika terjadi masalah saat mengambil data dari API, seperti tidak ada koneksi internet atau server tidak merespons. Dengan cara ini, aplikasi tetap bisa memberikan feedback kepada user baik ketika berhasil maupun gagal mengambil data.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 3".

Jawab :
    
![Langkah 5](assets/images/Praktikum1/Langkah5.gif)


## Praktikum 2: Menggunakan await/async untuk menghindari callbacks

## Soal 4
Jelaskan maksud kode langkah 1 dan 2 tersebut!

Jawab : Langkah 1 membuat tiga method asynchronous (returnOneAsync, returnTwoAsync, returnThreeAsync) yang masing-masing mensimulasikan operasi yang membutuhkan waktu 3 detik menggunakan Future.delayed(), kemudian mengembalikan nilai integer 1, 2, dan 3 secara berurutan. Langkah 2 membuat method count() yang menjalankan ketiga method tersebut secara berurutan menggunakan await, sehingga total waktu eksekusi menjadi 9 detik (3+3+3), lalu menjumlahkan hasilnya (1+2+3=6) dan menampilkan total tersebut di UI melalui setState(). Kode ini mendemonstrasikan bagaimana operasi asynchronous berjalan secara sequential (berurutan) dimana setiap operasi harus menunggu operasi sebelumnya selesai terlebih dahulu.

Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 4".

Jawab :

![Langkah 4](assets/images/Praktikum2/Langkah4.gif)


