# Laporan Praktikum

# 12 | Streams

# Pemrograman Mobile

### Nama : Mochammad Firmandika Jati Kusuma

### NIM : 2341720229

## Praktikum 1: Dart Streams

## Soal 1
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

Jawab :

![Langkah 1](assets/images/Praktikum1/Langkah1.png)

Gantilah warna tema aplikasi sesuai kesukaan Anda.

Jawab :

![Langkah 2](assets/images/Praktikum1/Langkah2.png)

Lakukan commit hasil jawaban Soal 1 dengan pesan "W12: Jawaban Soal 1"

Jawab :

![Langkah 2](assets/images/Praktikum1/Hasil2.png)

## Soal 2
Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.

Jawab :

![Langkah 3](assets/images/Praktikum1/Langkah3.png)

Lakukan commit hasil jawaban Soal 2 dengan pesan "W12: Jawaban Soal 2"

Jawab :

![Langkah 4](assets/images/Praktikum1/Hasil4.png)

## Soal 3
Jelaskan fungsi keyword yield* pada kode tersebut!

Jawab : Keyword yield* pada kode tersebut berfungsi untuk mendelegasikan atau meneruskan semua nilai dari stream lain ke dalam stream yang sedang dibuat. Dalam konteks ini, yield* akan menghasilkan nilai-nilai secara periodik dari Stream.periodic() ke stream utama, sehingga semua output dari stream periodic tersebut akan disalurkan atau di-forward secara otomatis.


Apa maksud isi perintah kode tersebut?

Jawab : Maksud dari perintah kode tersebut adalah membuat sebuah generator function yang menghasilkan stream warna secara periodik. Setiap 1 detik, fungsi akan dipanggil dengan parameter t yang merupakan counter atau penghitung yang bertambah setiap kali fungsi dipanggil dimulai dari 0, 1, 2, 3, dan seterusnya. Kemudian int index = t % colors.length; menghitung index dengan operasi modulo sehingga index akan berputar dari 0 sampai panjang list colors, lalu kembali ke 0 lagi. Setelah itu return colors[index]; mengembalikan warna pada index tersebut. Hasilnya adalah stream akan mengeluarkan warna-warna dari list colors secara berurutan dan berulang setiap 1 detik.

Lakukan commit hasil jawaban Soal 3 dengan pesan "W12: Jawaban Soal 3"

Jawab :

![Langkah 6](assets/images/Praktikum1/Hasil6.png)

## Soal 4
Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

Jawab :

![Langkah 12](assets/images/Praktikum1/Langkah12.gif)

Lakukan commit hasil jawaban Soal 4 dengan pesan "W12: Jawaban Soal 4"

Jawab :

![Langkah 12](assets/images/Praktikum1/Hasil12.png)


## Soal 5
Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !

Jawab : Perbedaan utama antara listen dan await for terletak pada cara eksekusi kode. Ketika menggunakan await for, kode akan berjalan secara sinkron dan memblokir eksekusi kode lainnya sampai stream selesai atau dibatalkan, sehingga kode setelah loop await for tidak akan dijalankan sampai stream berakhir. Sedangkan listen bersifat asinkron dan tidak memblokir eksekusi kode, sehingga kode setelah listen akan langsung dijalankan tanpa menunggu stream selesai. Dalam konteks praktis, listen lebih fleksibel karena memungkinkan kita untuk melanjutkan eksekusi kode lain sambil tetap mendengarkan perubahan dari stream, dan juga menyediakan callback tambahan seperti onError dan onDone untuk menangani error dan penyelesaian stream.


Lakukan commit hasil jawaban Soal 5 dengan pesan "W12: Jawaban Soal 5"

Jawab :

![Langkah 12](assets/images/Praktikum1/Langkah12.png)

## Praktikum 2: Stream controllers dan sinks

## Soal 6
Jelaskan maksud kode langkah 8 dan 10 tersebut!

Jawab :


Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

Jawab :

![Langkah 12](assets/images/Praktikum2/Langkah12.gif)

Lalu lakukan commit dengan pesan "W12: Jawaban Soal 6".

Jawab :

![Langkah 12](assets/images/Praktikum2/Langkah12.png)

## Soal 7
Jelaskan maksud kode langkah 13 sampai 15 tersebut!

Jawab :


Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.

Jawab :

![Langkah 13](assets/images/Praktikum2/Langkah13.png)

Lalu lakukan commit dengan pesan "W12: Jawaban Soal 7".

Jawab :

![Langkah 15](assets/images/Praktikum2/Langkah15.png)

## Praktikum 3: Injeksi data ke streams

## Soal 8
Jelaskan maksud kode langkah 1-3 tersebut!

Jawab :


Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

Jawab :

![Langkah 4](assets/images/Praktikum3/Langkah4.gif)

Lalu lakukan commit dengan pesan "W12: Jawaban Soal 8".

Jawab :

![Langkah 4](assets/images/Praktikum3/Langkah4.png)

## Praktikum 4: Subscribe ke stream events

## Soal 9
Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!

Jawab :


Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

Jawab :

![Langkah 10](assets/images/Praktikum4/Langkah10.gif)


Lalu lakukan commit dengan pesan "W12: Jawaban Soal 9".

Jawab :

![Langkah 10](assets/images/Praktikum4/Langkah10.png)

## Praktikum 5: Multiple stream subscriptions

## Soal 10
Jelaskan mengapa error itu bisa terjadi ?

Jawab :


## Soal 11
Jelaskan mengapa hal itu bisa terjadi ?

Jawab :


Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

Jawab :

![Langkah 6](assets/images/Praktikum5/Langkah6.gif)

Lalu lakukan commit dengan pesan "W12: Jawaban Soal 10,11".

Jawab :

![Langkah 6](assets/images/Praktikum1/Langkah6.png)

## Praktikum 6: StreamBuilder

## Soal 12
Jelaskan maksud kode pada langkah 3 dan 7 !

Jawab :


Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

Jawab :

![Langkah 8](assets/images/Praktikum6/Langkah8.gif)

Lalu lakukan commit dengan pesan "W12: Jawaban Soal 12".

Jawab :

![Langkah 8](assets/images/Praktikum6/Langkah8.png)

## Praktikum 7: BLoC Pattern

## Soal 13
Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?

Jawab :


Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

Jawab :

![Langkah 13](assets/images/Praktikum7/Langkah13.gif)

Lalu lakukan commit dengan pesan "W12: Jawaban Soal 13".

Jawab :

![Langkah 13](assets/images/Praktikum7/Langkah13.png)

