// Praktikum 2: Eksperimen Tipe Data Set

// Langkah 1 :
// void main() {
//  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//  print(halogens);
// }
// Langkah 2 :
// Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi?
// Jelaskan! Lalu perbaiki jika terjadi error.
// Jawab : Kode pada langkah 1 berhasil dieksekusi tanpa error.
// Kode tersebut membuat sebuah set bernama halogens yang berisi lima elemen yaitu 'fluorine', 'chlorine', 'bromine', 'iodine', dan 'astatine'.
// Setelah itu, kode mencetak isi dari set halogens. Hasilnya adalah daftar elemen yang ada dalam set tersebut.
// Set adalah kumpulan elemen unik, sehingga tidak ada elemen yang duplikat dalam set tersebut.

// Langkah 3 :
// void main() {
// var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//  print(halogens);

// Variabel Set
//  var names1 = <String>{};
//  Set<String> names2 = {}; // Ini adalah Set kosong
//  var names3 = {}; // Ini bukan Set, tapi Map kosong

// print(names1);
// print(names2);
// print(names3);

// }
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut.
// Jawab : Pada kode di atas, tidak ada error yang terjadi.
// Namun, perlu dicatat bahwa variabel names3 bukanlah sebuah Set, melainkan sebuah Map kosong karena tidak ada tipe data yang ditentukan.
// Untuk memperbaiki dan menambahkan elemen nama dan NIM pada kedua variabel Set (names1 dan names2),
// kita bisa menggunakan metode .add() untuk menambahkan satu elemen dan .addAll()
// untuk menambahkan beberapa elemen sekaligus.

// Berikut adalah contoh penambahan elemen menggunakan kedua metode tersebut:
// Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll().
// Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.
// Jawab :
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print('Halogen: $halogens');

  // Variabel Set
  var names1 = <String>{};
  Set<String> names2 = {};

  // Tambahkan nama dan NIM ke names1 menggunakan .add()
  names1.add('Mochammad Firmandika Jati Kusuma');
  names1.add('2341720229');

  // Tambahkan nama dan NIM ke names2 menggunakan .addAll()
  names2.addAll({'Mochammad Firmandika Jati Kusuma', '2341720229'});

  print('Isi names1 (menggunakan .add()): $names1');
  print('Isi names2 (menggunakan .addAll()): $names2');
  
}
