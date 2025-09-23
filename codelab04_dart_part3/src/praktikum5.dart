// Praktikum 5: Eksperimen Tipe Data Records

// Langkah 1 :
// Ketik atau salin kode program berikut ke dalam fungsi main(). 
// void main() {
//  var record = ('first', a: 2, b: true, 'last');
//  print(record);
//}

// Langkah 2 : 
// Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. 
// Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
// Jawab : Terjadi error karena tidak ada tanda ';' sehingga tidak bisa dijalankan.
// Solusinya dengan memberikan ';' pada kode print(record); 

// Langkah 3 :
// Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.
// (int, int) tukar ((int,int) record) {
//    var (a, b) = record;
//    return (b, a);
//  }
// void main() {
//  var record = ('first', a: 2, b: true, 'last');
//  print(record);
// }
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki. 
// Jawab : Terjadi error karena deklarasi record berada di main(). 
// Fungsi tukar() untuk menerima (int, int), namun saat mencoba memanggilnya dengan ('first', a: 2, b: true, 'last') yang memiliki tipe data berbeda (campuran String, int, dan bool). 
// Fungsi tukar() juga tidak dipanggil di dalam main() sebagaimana yang diminta. Oleh karena itu, tidak bisa memanggil fungsi tukar() dengan record yang sudah ada.
// Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.

// Berikut ini adalah kode program sudah diperbaiki : 
// Deklarasi fungsi tukar di luar main() (top-level)
// (int, int) tukar((int, int) record) {
//  var (a, b) = record;
//  return (b, a);
// }

// void main() {
  // Deklarasi Record awal
//  var record = ('first', a: 2, b: true, 'last');
//  print('Record awal: $record');

  // Deklarasi Record baru yang sesuai dengan tipe fungsi tukar()
//  var point = (10, 20);
//  print('Record yang akan ditukar (tipe: (int, int)): $point');

  // Menggunakan fungsi tukar() untuk menukar nilai
//  var swappedPoint = tukar(point);
//  print('Record setelah ditukar: $swappedPoint');
//  }

// Langkah 4:
// Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
// (int, int) tukar((int, int) record) {
//  var (a, b) = record;
//  return (b, a);
// }

// void main() {
  // Deklarasi Record awal
//  var record = ('first', a: 2, b: true, 'last');
//  print('Record awal: $record');

  // Deklarasi Record baru yang sesuai dengan tipe fungsi tukar()
//  var point = (10, 20);
//  print('Record yang akan ditukar (tipe: (int, int)): $point');

  // Menggunakan fungsi tukar() untuk menukar nilai
//  var swappedPoint = tukar(point);
//  print('Record setelah ditukar: $swappedPoint');

  // Mendeklarasikan variabel record dengan anotasi tipe eksplisit
//  (String, int) mahasiswa;
//  print(mahasiswa);
// }
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki. 
// Jawab : Terjadi error pada baris print(mahasiswa);. Variabel mahasiswa hanya dideklarasikan, tetapi tidak diinisialisasi dengan nilai apa pun.
// Solusinya dengan memberikan nilai awak pada variabel mahasiswa saat mendeklarasikan.
//Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!

// Berikut ini adalah kode program sudah diperbaiki : 
// (int, int) tukar((int, int) record) {
//  var (a, b) = record;
//  return (b, a);
// }

// void main() {
  // Deklarasi Record awal
//  var record = ('first', a: 2, b: true, 'last');
//  print('Record awal: $record');

  // Deklarasi Record baru yang sesuai dengan tipe fungsi tukar()
//  var point = (10, 20);
//  print('Record yang akan ditukar (tipe: (int, int)): $point');

  // Menggunakan fungsi tukar() untuk menukar nilai
//  var swappedPoint = tukar(point);
//  print('Record setelah ditukar: $swappedPoint');

  // Mendeklarasikan variabel record dengan anotasi tipe eksplisit
//  (String, int) mahasiswa = ('Mochammad Firmandika Jati Kusuma', 2341720229);
//  print('Data Mahasiswa: $mahasiswa');
// }

// Langkah 5 :
// Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
// (int, int) tukar((int, int) record) {
//  var (a, b) = record;
//  return (b, a);
// }

// void main() {
  // Deklarasi Record awal
//  var record = ('first', a: 2, b: true, 'last');
//  print('Record awal: $record');

  // Deklarasi Record baru yang sesuai dengan tipe fungsi tukar()
//  var point = (10, 20);
//  print('Record yang akan ditukar (tipe: (int, int)): $point');

  // Menggunakan fungsi tukar() untuk menukar nilai
//  var swappedPoint = tukar(point);
//  print('Record setelah ditukar: $swappedPoint');

  // Mendeklarasikan variabel record dengan anotasi tipe eksplisit
//  (String, int) mahasiswa = ('Mochammad Firmandika Jati Kusuma', 2341720229);
//  print('Data Mahasiswa: $mahasiswa');

//  var mahasiswa2 = ('first', a:2, b:true, 'last');

//  print(mahasiswa2.$1); // Prints 'first'
//  print(mahasiswa2.a); // Prints 2
//  print(mahasiswa2.b); // Prints true
//  print(mahasiswa2.$2); // Prints 'last'
// }
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!
// Jawab : Tidak terjadi error, karena kode program diatas sudah dideklarasikan dan diinisialisasi. Jadi tidak perlu ada kode yang dirubah.

// Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!
// Berikut ini adalah kode program sudah diperbaiki : 
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  // Deklarasi Record awal
  var record = ('first', a: 2, b: true, 'last');
  print('Record awal: $record');

  // Deklarasi Record baru yang sesuai dengan tipe fungsi tukar()
  var point = (10, 20);
  print('Record yang akan ditukar (tipe: (int, int)): $point');

  // Menggunakan fungsi tukar() untuk menukar nilai
  var swappedPoint = tukar(point);
  print('Record setelah ditukar: $swappedPoint');

  // Mendeklarasikan variabel record dengan anotasi tipe eksplisit
  (String, int) mahasiswa = ('Mochammad Firmandika Jati Kusuma', 2341720229);
  print('Data Mahasiswa: $mahasiswa');

  var mahasiswa2 = ('first', a:2341720229, b:'Mochammad Firmandika Jati Kusuma', 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}