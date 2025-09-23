// Praktikum 3: Eksperimen Tipe Data Maps
// Langkah 1 :
// void main() {
//   var gifts = {
// Key:    Value
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 1
//   };

//       var nobleGases = {
//         2: 'helium',
//         10: 'neon',
//         18: 2,
//   };

//   print(gifts);
//   print(nobleGases);
// }

// Langkah 2 :
// Silakan coba eksekusi (Run) kode pada langkah 1 tersebut.
// Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
// Jawab : Kode pada langkah 1 berhasil dieksekusi tanpa error.
// Kode tersebut membuat dua map, yaitu gifts dan nobleGases.
// Map gifts menggunakan string sebagai key dan memiliki tiga pasangan key-value, yaitu 'first': 'partridge', 'second': 'turtledoves', dan 'fifth': 1.
// Map nobleGases menggunakan integer sebagai key dan memiliki tiga pasangan key-value, yaitu 2: 'helium', 10: 'neon', dan 18: 2.
// Setelah itu, kode mencetak isi dari kedua map tersebut. Hasilnya adalah daftar pasangan key-value yang ada dalam masing-masing map.

// Langkah 3 :
// void main() {
// var gifts = {
//   // Key:   Value
//   'first': 'partridge',
//   'second': 'turtledoves',
//   'fifth': 1,
// };

// var nobleGases = {
//   2: 'helium',
//   10: 'neon',
//   18: 2,
// };

// // Memperbarui Map gifts dan menambahkan data Anda
// var mhs1 = Map<String, String>();
// gifts['first'] = 'partridge';
// gifts['second'] = 'turtledoves';
// gifts['fifth'] = 'golden rings';

// // Memperbarui Map nobleGases dan menambahkan data Anda
// var mhs2 = Map<int, String>();
// nobleGases[2] = 'helium';
// nobleGases[10] = 'neon';
// nobleGases[18] = 'argon';

// // Mencetak hasil
// print('gifts: $gifts');
// print('nobleGases: $nobleGases');
// print('mhs1: $mhs1'); // Tambahan
// print('mhs2: $mhs2'); // Tambahan
// }
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
// Jawab : Kode pada langkah 3 berhasil dieksekusi tanpa error. Tapi ada 2 variabel yang belum diisi yaitu mhs1 dan mhs2.
// Variabel mhs1 dan mhs2 adalah map kosong yang dibuat untuk menampung data mahasiswa.
// Namun, dalam kode tersebut, variabel mhs1 dan mhs2 tidak diisi dengan data apapun, sehingga tetap kosong.
// Untuk memperbaikinya, kita bisa menambahkan data nama dan NIM pada variabel mhs1 dan mhs2.

// Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!
// Jawab :
void main() {
  var gifts = {
    // Key:   Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  // Menambahkan nama dan NIM ke Map gifts
  gifts['Nama'] = 'Mochammad Firmandika Jati Kusuma';
  gifts['NIM'] = '2341720229';

  // Menambahkan nama dan NIM ke Map nobleGases
  nobleGases[20] = 'Mochammad Firmandika Jati Kusuma';
  nobleGases[21] = '2341720229';

  // Deklarasi dan inisialisasi Map baru
  var mhs1 = <String, String>{};
  mhs1['NIM'] = 'Mochammad Firmandika Jati Kusuma';
  mhs1['Nama'] = '2341720229';

  var mhs2 = <int, String>{};
  mhs2[1] = 'Mochammad Firmandika Jati Kusuma';
  mhs2[2] = '2341720229';

  // Mencetak hasil
  print('gifts: $gifts');
  print('nobleGases: $nobleGases');
  print('mhs1: $mhs1'); // Tambahan
  print('mhs2: $mhs2'); // Tambahan
}
