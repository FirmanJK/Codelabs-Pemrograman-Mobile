# Laporan Praktikum

# 05 | Aplikasi Pertama dan Widget Dasar Flutter

# Pemrograman Mobile

### Nama : Mochammad Firmandika Jati Kusuma

### NIM : 2341720229

---

## Praktikum 1: Membuat Project Flutter Baru

### Langkah 1 :

Buka VS Code, lalu tekan tombol Ctrl + Shift + P maka akan tampil Command Palette, lalu ketik Flutter. Pilih New Application Project.

![Langkah 1](assets/image/Praktikum1/Langkah1.png)

### Langkah 2 :

Kemudian buat folder sesuai style laporan praktikum yang Anda pilih. Disarankan pada folder dokumen atau desktop atau alamat folder lain yang tidak terlalu dalam atau panjang. Lalu pilih Select a folder to create the project in.

![Langkah 2](assets/image/Praktikum1/Langkah2.png)

### Langkah 3 :

Buat nama project flutter hello_world seperti berikut, lalu tekan Enter. Tunggu hingga proses pembuatan project baru selesai.

![Langkah 3](assets/image/Praktikum1/Langkah3.png)

### Langkah 4 :
Jika sudah selesai proses pembuatan project baru, pastikan tampilan seperti berikut. Pesan akan tampil berupa "Your Flutter Project is ready!" artinya Anda telah berhasil membuat project Flutter baru.

![Langkah 4](assets/image/Praktikum1/Langkah4.png)


## Praktikum 2 : Menghubungkan Perangkat Android atau Emulator

Melanjutkan dari praktikum 1, Anda diminta untuk menjalankan aplikasi ke perangkat fisik (device Android atau iOS). Silakan ikuti langkah-langkah pada codelab tautan berikut ini.

https://developer.android.com/codelabs/basic-android-kotlin-compose-connect-device?hl=id#0

## • Mengaktifkan proses debug USB

Agar Android Studio dapat berkomunikasi dengan perangkat Android, Anda harus mengaktifkan proses debug USB di setelan Opsi developer di perangkat.

Untuk menampilkan opsi developer dan mengaktifkan Proses debug USB :

1.	Di perangkat Android, ketuk Settings > About phone.
2.	Ketuk Build number tujuh kali.
3.	Jika diminta, masukkan sandi atau PIN perangkat. Anda tahu Anda telah berhasil saat melihat pesan You are now a developer!.

    ![Langkah 3 USB](assets/image/Praktikum2/Langkah3USB%20.jpeg)

4.	Kembali ke Settings, lalu ketuk System > Developer options.
5.	Jika Anda tidak melihat Developer options, ketuk Advanced options.
          
    ![Langkah 5](assets/image/Praktikum2/Langkah5.jpeg)

    ![Langkah 5](assets/image/Praktikum2/Langkah5(1).jpeg)

6.	Ketuk Opsi developer, lalu ketuk tombol Proses debug USB untuk mengaktifkannya.
 
    ![Langkah 5](assets/image/Praktikum2/Langkah5(4).jpeg)

    ![Langkah 5](assets/image/Praktikum2/Langkah6.jpeg)

•	Menginstal Driver USB Google (khusus Windows)
Jika Android Studio diinstal di Windows, Anda harus menginstal driver perangkat USB agar dapat menjalankan aplikasi di perangkat fisik.

1.	Di Android Studio, klik Tools > SDK Manager. Dialog Preferences > Appearance & Behavior > System Settings > Android SDK akan terbuka.
2.	Klik tab SDK Tools.
3.	Pilih Google USB Driver, lalu klik OK.

    ![Langkah 6](assets/image/Praktikum2/Langkah5(7).png)
 
Setelah selesai, file driver akan didownload ke direktori android_sdk\extras\google\usb_driver. Sekarang Anda dapat menghubungkan dan menjalankan aplikasi dari Android Studio.

## • Menjalankan aplikasi di perangkat Android menggunakan kabel
Adua cara untuk menghubungkan perangkat ke Android Studio, melalui kabel atau Wi-Fi. Anda dapat memilih cara mana pun yang Anda sukai.

Untuk menjalankan aplikasi dari Android Studio di perangkat Android:
1.	Sambungkan perangkat Android ke komputer menggunakan kabel USB. Dialog yang meminta Anda mengizinkan proses debug USB akan muncul di perangkat.
2.	Pilih kotak centang Always allow from this computer, lalu ketuk OK.
3.	Di Android Studio di komputer, pastikan perangkat Anda dipilih di menu dropdown. Klik .
 
    ![Langkah 5](assets/image/Praktikum2/Langkah5(8).png)
 
4.	Pilih perangkat lalu klik OK. Android Studio akan menginstal aplikasi di perangkat, lalu menjalankannya.

    ![Langkah 5](assets/image/Praktikum2/Langkah5(9).png)

5. Jika perangkat menjalankan platform Android yang tidak diinstal di Android Studio dan melihat pesan berisi pertanyaan apakah Anda ingin menginstal platform yang diperlukan, klik Install > Continue > Finish. Android Studio akan menginstal aplikasi di perangkat, lalu menjalankannya.


## • Menjalankan aplikasi di perangkat Android menggunakan Wi-Fi
Jika tidak memiliki kabel, Anda juga dapat menghubungkan dan menjalankan aplikasi di perangkat dengan Wi-Fi.

Mulai
1.	Pastikan komputer dan perangkat Anda terhubung ke jaringan nirkabel yang sama.
2.	Pastikan perangkat Anda menjalankan Android 11 atau yang lebih baru. Untuk informasi selengkapnya, lihat Memeriksa & mengupdate versi Android.
3.	Pastikan komputer Anda telah memiliki Android Studio versi terbaru. Untuk mendownloadnya, lihat Android Studio.
4.	Pastikan komputer Anda memiliki SDK Platform Tools versi terbaru.

## Menyambungkan perangkat Anda
1.	Di Android Studio, pilih Pair Devices Using Wi-Fi dari menu drop-down konfigurasi run.
 
    ![Langkah 5](assets/image/Praktikum2/Langkah5(8).png)

    Dialog Pair devices over Wi-Fi akan terbuka.

    ![Langkah 5](assets/image/Praktikum2/Langkah5(2).png)

2.	Buka Developer options, scroll ke bawah ke bagian Debugging, lalu aktifkan Wireless debugging.
      
     ![Langkah 5](assets/image/Praktikum2/Langkah5(5).jpeg)

3.	Pada pop-up Izinkan proses debug nirkabel di jaringan ini?, pilih Allow.
 
    ![Langkah 6](assets/image/Praktikum2/Langkah6(1).jpeg)

4.	Jika Anda ingin menyambungkan perangkat dengan kode QR, pilih Pair device with QR code, lalu pindai kode QR di komputer Anda. Atau, jika Anda ingin menyambungkan perangkat dengan kode penghubung, pilih Pair device with pairing code, lalu masukkan 6 digit kode.
5.	Klik jalankan dan Anda dapat men-deploy aplikasi ke perangkat.
 
##	Praktikum 3: Membuat Repository GitHub dan Laporan Praktikum

### Langkah 1 :
Login ke akun GitHub Anda, lalu buat repository baru dengan nama "flutter-fundamental-part1"

### Langkah 2:
Lalu klik tombol "Create repository" lalu akan tampil seperti gambar berikut.

### Langkah 3:
Kembali ke VS code, project flutter hello_world, buka terminal pada menu Terminal > New Terminal. Lalu ketik perintah berikut untuk inisialisasi git pada project Anda.

git init

### Langkah 4:
Pilih menu Source Control di bagian kiri, lalu lakukan stages (+) pada file .gitignore untuk mengunggah file pertama ke repository GitHub.

### Langkah 5:
Beri pesan commit "tambah gitignore" lalu klik Commit (✔)

### Langkah 6:
Lakukan push dengan klik bagian menu titik tiga > Push

### Langkah 7:
Di pojok kanan bawah akan tampil seperti gambar berikut. Klik "Add Remote"

### Langkah 8:
Salin tautan repository Anda dari browser ke bagian ini, lalu klik Add remote

Setelah berhasil, tulis remote name dengan "origin"

### Langkah 9:
Lakukan hal yang sama pada file README.md mulai dari Langkah 4. Setelah berhasil melakukan push, masukkan username GitHub Anda dan password berupa token yang telah dibuat (pengganti password konvensional ketika Anda login di browser GitHub). Reload halaman repository GitHub Anda, maka akan tampil hasil push kedua file tersebut seperti gambar berikut.

### Langkah 10:
Lakukan push juga untuk semua file lainnya dengan pilih Stage All Changes. Beri pesan commit "project hello_world". Maka akan tampil di repository GitHub Anda seperti berikut.

### Langkah 11:
Kembali ke VS Code, ubah platform di pojok kanan bawah ke emulator atau device atau bisa juga menggunakan browser Chrome. Lalu coba running project hello_world dengan tekan F5 atau Run > Start Debugging. Tunggu proses kompilasi hingga selesai, maka aplikasi flutter pertama Anda akan tampil seperti berikut.

![Langkah 11](assets/image/Praktikum3/Langkah11.png)

### Langkah 12:
Silakan screenshot seperti pada Langkah 11, namun teks yang ditampilkan dalam aplikasi berupa nama lengkap Anda. Simpan file screenshot dengan nama 01.png pada folder images (buat folder baru jika belum ada) di project hello_world Anda. Lalu ubah isi README.md seperti berikut, sehingga tampil hasil screenshot pada file README.md. Kemudian push ke repository Anda.

![Langkah 12](assets/image/Praktikum3/Langkah12.jpeg)

## Praktikum 4 : Menerapkan Widget Dasar
### Langkah 1 : Text Widget
Buat folder baru basic_widgets di dalam folder lib. Kemudian buat file baru di dalam basic_widgets dengan nama text_widget.dart. Ketik atau salin kode program berikut ke project hello_world Anda pada file text_widget.dart.

![Langkah 1](assets/image/Praktikum4/Langkah1.png)

Lakukan import file text_widget.dart ke main.dart, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut. Screenshot hasil milik Anda, lalu dibuat laporan pada file README.md.

![Langkah 1](assets/image/Praktikum4/Langkah1(2).png)

### Langkah 2 : Image Widget
Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut.

![Langkah 2](assets/image/Praktikum4/Langkah2.png)

Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.

![Langkah 2](assets/image/Praktikum4/Langkah2(2).png)

Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.

![Langkah 2](assets/image/Praktikum4/Langkah2(3).png)

## Praktikum 5 : Menerapkan Widget Material Design dan iOS Cupertino
Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan project hello_world Anda. Lakukan langkah yang sama seperti pada Praktikum 3, yaitu setiap widget dibuat file sendiri lalu import ke main.dart dan screenshot hasilnya.

### Langkah 1 : Cupertino Button dan Loading Bar
Buat file di basic_widgets > loading_cupertino.dart. Import stateless widget dari material dan cupertino. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

![Langkah 1](assets/image/Praktikum5/Langkah1.png)

### Langkah 2: Floating Action Button (FAB)
Button widget terdapat beberapa macam pada flutter yaitu ButtonBar, DropdownButton, TextButton, FloatingActionButton, IconButton, OutlineButton, PopupMenuButton, dan ElevatedButton.

Buat file di basic_widgets > fab_widget.dart. Import stateless widget dari material. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

![Langkah 2](assets/image/Praktikum5/Langkah2.png)

### Langkah 3: Scaffold Widget
Scaffold widget digunakan untuk mengatur tata letak sesuai dengan material design.

Ubah isi kode main.dart seperti berikut.

![Langkah 3](assets/image/Praktikum5/Langkah3.jpeg)

### Hasilnya :

![Langkah 3](assets/image/Praktikum5/Langkah3(1).png)

### Langkah 4: Dialog Widget
Dialog widget pada flutter memiliki dua jenis dialog yaitu AlertDialog dan SimpleDialog.

Ubah isi kode main.dart seperti berikut.

![Langkah 4](assets/image/Praktikum5/Langkah4.jpeg)

### Hasilnya : 

![Langkah 4](assets/image/Praktikum5/Langkah4(1).png)

### Langkah 5: Input dan Selection Widget
Flutter menyediakan widget yang dapat menerima input dari pengguna aplikasi yaitu antara lain Checkbox, Date and Time Pickers, Radio Button, Slider, Switch, TextField.

Contoh penggunaan TextField widget adalah sebagai berikut:

![Langkah 5](assets/image/Praktikum5/Langkah5.jpeg)

### Hasilnya :

![Langkah 5](assets/image/Praktikum5/Langkah5(1).png)

### Langkah 6: Date and Time Pickers
Date and Time Pickers termasuk pada kategori input dan selection widget, berikut adalah contoh penggunaan Date and Time Pickers.

![Langkah 6](assets/image/Praktikum5/Langkah6.jpeg)

### Hasilnya :

![Langkah 5](assets/image/Praktikum5/Langkah6(1).png)

![Langkah 6](assets/image/Praktikum5/Langkah6(2).png)


## Tugas Praktikum
1. Selesaikan Praktikum 1 sampai 5, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md!

    Jawab : Dokumentasi dan push ke repository sudah  

2. Selesaikan Praktikum 2 dan Anda wajib menjalankan aplikasi hello_world pada perangkat fisik (device Android/iOS) agar Anda mempunyai pengalaman untuk menghubungkan ke perangkat fisik. Capture hasil aplikasi di perangkat, lalu buatlah laporan praktikum pada file README.md.

    Jawab : Sudah selesai Praktikum 2 bisa dilihat pada Readme.md pada bagian Praktikum 2

    ### Berikut aplikasi hello_word pada perangkat fisik device Android
    ![Pertanyaan 2](assets/image/Praktikum2/Pertanyaan2.jpeg)


3. Pada praktikum 5 mulai dari Langkah 3 sampai 6, buatlah file widget tersendiri di folder basic_widgets, kemudian pada file main.dart cukup melakukan import widget sesuai masing-masing langkah tersebut!

    Jawab : Sudah selesai Praktikum 5 bisa dilihat pada Readme.md pada bagian Praktikum 5

4. Selesaikan Codelabs: Your first Flutter app, lalu buatlah laporan praktikumnya dan push ke repository GitHub Anda!

    Jawab :



5. README.md berisi: capture hasil akhir tiap praktikum (side-by-side, bisa juga berupa file GIF agar terlihat proses perubahan ketika ada aksi dari pengguna) dengan menampilkan NIM dan Nama Anda sebagai ciri pekerjaan Anda.

    Jawab : Sudah bisa dilihat langsung pada praktikum

6. Kumpulkan berupa link repository/commit GitHub Anda kepada dosen yang telah disepakati!

    Jawab : https://github.com/FirmanJK/Codelabs-Pemrograman-Mobile/tree/main/codelab05_aplikasi_pertama_widget_dasar_flutter






























