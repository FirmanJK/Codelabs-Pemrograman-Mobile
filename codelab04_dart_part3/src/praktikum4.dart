// Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators
// Langkah 1 :
//  void main() {
//    var list1 = [1, 2, 3];
//    var list2 = [0, ...list1];
//    print(list1); // Output: [1, 2, 3]
//    print(list2); // Output: [0, 1, 2, 3]
//    print(list2.length); // Output: 4

// }

// Langkah 2 :
// Silakan coba eksekusi (Run) kode pada langkah 1 tersebut.
// Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
// Jawab : Kode pada langkah 1 menghasilkan error karena variabel list1 digunakan sebelum didefinisikan.
// Untuk memperbaikinya, kita perlu mendefinisikan list1 terlebih dahulu sebelum menggunakannya dalam list2.
// Setelah memperbaiki kode, list1 berisi [1, 2, 3] dan list2 berisi [0, 1, 2, 3].
// Panjang list2 adalah 4 karena terdiri dari empat elemen yaitu 0, 1, 2, dan 3.

// Langkah 3 :
// Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
// void main() {
//  var list1 = [1, 2, 3];
//  list1 = [1, 2, null];

//  var list2 = [0, ...list1];
//  var list3 = [0, ...?list1];

//  print(list1);
//  print(list2);
//  print(list2.length);
//  print(list3.length);
// }
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
//  void main() {
  // Deklarasi list1 agar bisa menerima nilai null
//   var list1 = <int?>[1, 2, 3];
//   list1 = [1, 2, null];

//   var list2 = [0, ...list1];
//   var list3 = [0, ...?list1];

//   print(list1);
//   print(list2);
//   print(list2.length);
//   print(list3);
//   print(list3.length);
// }
// Jawab : Pesan kesalahan tersebut muncul karena dua masalah utama. 
// Pertama, saya mencoba memasukkan nilai null ke dalam list yang hanya bisa menampung bilangan bulat (int). 
// Secara default, Dart menyimpulkan bahwa list saya hanya berisi int. 
// Kedua, saya menggunakan operator ...? yang dirancang untuk list yang bisa bernilai null, padahal list saya tidak dideklarasikan seperti itu. 
// Intinya, saya menggunakan nilai dan operator yang tidak cocok dengan tipe data list yang sudah ditentukan.

// Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!
// void main() {
  // Deklarasi list1 agar bisa menerima nilai null
//  var list1 = <int?>[1, 2, 3];
//  list1 = [1, 2, null];

//  var list2 = [0, ...list1];
//  var list3 = [0, ...?list1];

  // Tambahkan list berisi NIM Anda
//  var nim = [2, 3, 4, 1, 7, 2, 0, 2, 2, 9]; // Ganti dengan NIM Anda
//  var listNIM = [...list1, ...nim];

//  print('Isi list1: $list1');
//  print('Isi list2: $list2');
//  print('Panjang list2: ${list2.length}');
//  print('Isi list3: $list3');
//  print('Panjang list3: ${list3.length}');
//  print('Isi listNIM: $listNIM');
//  print('Panjang listNIM: ${listNIM.length}');
// }

// Langkah 4 :
// Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
//  void main() {
// Deklarasi list1 agar bisa menerima nilai null
//    var list1 = <int?>[1, 2, 3];
//    list1 = [1, 2, null];

//    var list2 = [0, ...list1];
//    var list3 = [0, ...?list1];

    // Tambahkan list berisi NIM Anda
//    var nim = [2, 3, 4, 1, 7, 2, 0, 2, 2, 9];
//    var listNIM = [...list1, ...nim];

//    var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

//    print(nav);
//    print('Isi list1: $list1');
//    print('Isi list2: $list2');
//    print('Panjang list2: ${list2.length}');
//    print('Isi list3: $list3');
//    print('Panjang list3: ${list3.length}');
//    print('Isi listNIM: $listNIM');
//    print('Panjang listNIM: ${listNIM.length}');
// }
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.
// Jawab : Terjadi error karena variabel promoActive tidak dideklarasikan. Ketika Dart mengevaluasi if (promoActive), ia tidak dapat
// menemukan tersebut, sehingga terjadi error. Untuk memperbaikinya dengan mendeklarasikan variabel promoActive sebelum digunakan.
// Berikut ini adalah kode program sudah diperbaiki : 
// void main() {
//   // Deklarasi list1 agar bisa menerima nilai null
//   // var list1 = <int?>[1, 2, 3];
//   // list1 = [1, 2, null];

//   // var list2 = [0, ...list1];
//   // var list3 = [0, ...?list1];

//   // // Tambahkan list berisi NIM Anda
//   // var nim = [2, 3, 4, 1, 7, 2, 0, 2, 2, 9];
//   // var listNIM = [...list1, ...nim];

//   // // --- KASUS 1: promoActive = true ---
//   // var promoActive = true;
//   // var navTrue = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

//   // print('Hasil ketika promoActive = true:');
//   // print('nav: $navTrue');
//   // print('Panjang nav: ${navTrue.length}');
//   // print('');

//   // // --- KASUS 2: promoActive = false ---
//   // promoActive = false;
//   // var navFalse = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

//   // print('Hasil ketika promoActive = false:');
//   // print('nav: $navFalse');
//   // print('Panjang nav: ${navFalse.length}');

//   // // Menampilkan hasil dari kode sebelumnya
//   // print('');
//   // print('Isi list1: $list1');
//   // print('Isi list2: $list2');
//   // print('Panjang list2: ${list2.length}');
//   // print('Isi list3: $list3');
//   // print('Panjang list3: ${list3.length}');
//   // print('Isi listNIM: $listNIM');
//   // print('Panjang listNIM: ${listNIM.length}');
// }

// Langkah 5 :
// Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
//  void main() {
//  Deklarasi list1 agar bisa menerima nilai null
//   var list1 = <int?>[1, 2, 3];
//   list1 = [1, 2, null];

//   var list2 = [0, ...list1];
//   var list3 = [0, ...?list1];

//  Tambahkan list berisi NIM Anda
//  var nim = [2, 3, 4, 1, 7, 2, 0, 2, 2, 9];
//  var listNIM = [...list1, ...nim];

//  --- KASUS 1: promoActive = true ---
//  var promoActive = true;
//  var navTrue = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

//   print('Hasil ketika promoActive = true:');
//   print('nav: $navTrue');
//   print('Panjang nav: ${navTrue.length}');
//   print('');

//    --- KASUS 2: promoActive = false ---
//   promoActive = false;
//   var navFalse = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

//   print('Hasil ketika promoActive = false:');
//   print('nav: $navFalse');
//   print('Panjang nav: ${navFalse.length}');

//   var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
//   print(nav2);

//   Menampilkan hasil dari kode sebelumnya
//  print('');
//  print('Isi list1: $list1');
//  print('Isi list2: $list2');
//  print('Panjang list2: ${list2.length}');
//  print('Isi list3: $list3');
//  print('Panjang list3: ${list3.length}');
//  print('Isi listNIM: $listNIM');
//  print('Panjang listNIM: ${listNIM.length}');
// }
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.
//  Jawab : Kode program terjadi error karena variabel login tidak dideklarasikan dan tidak ada ekspresi yang tepat setelah case.
// Sehingga tidak bisa digunakan dalam sintaks case secara langsung di dalam kondisi if.
// Berikut ini adalah kode program sudah diperbaiki : 
// void main() {
//   // Kode Anda yang sudah ada...
//   // var list1 = <int?>[1, 2, 3];
//   // list1 = [1, 2, null];

//   // var list2 = [0, ...list1];
//   // var list3 = [0, ...?list1];

//   // var nim = [2, 3, 4, 1, 7, 2, 0, 2, 2, 9];
//   // var listNIM = [...list1, ...nim];

//   // var promoActive = true;
//   // var navTrue = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

//   // print('Hasil ketika promoActive = true:');
//   // print('nav: $navTrue');
//   // print('Panjang nav: ${navTrue.length}');
//   // print('');

//   // promoActive = false;
//   // var navFalse = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

//   // print('Hasil ketika promoActive = false:');
//   // print('nav: $navFalse');
//   // print('Panjang nav: ${navFalse.length}');

//   // // Kode baru yang sudah diperbaiki
//   // // Kasus 1: Login sebagai 'Manager'
//   // var login = 'Manager';
//   // var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
//   // print('\nnav2 ketika login sebagai Manager: $nav2');

//   // // Kasus 2: Login sebagai 'User'
//   // login = 'User';
//   // var nav3 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
//   // print('nav3 ketika login sebagai User: $nav3');

//   // // Hasil kode yang sudah ada...
//   // print('\nIsi list1: $list1');
//   // print('Isi list2: $list2');
//   // print('Panjang list2: ${list2.length}');
//   // print('Isi list3: $list3');
//   // print('Panjang list3: ${list3.length}');
//   // print('Isi listNIM: $listNIM');
//   // print('Panjang listNIM: ${listNIM.length}');
// }

// Langkah 6 :
// Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
void main() {
  // Kode Anda yang sudah ada...
  var list1 = <int?>[1, 2, 3];
  list1 = [1, 2, null];

  var list2 = [0, ...list1];
  var list3 = [0, ...?list1];

  var nim = [2, 3, 4, 1, 7, 2, 0, 2, 2, 9];
  var listNIM = [...list1, ...nim];

  var promoActive = true;
  var navTrue = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

  print('Hasil ketika promoActive = true:');
  print('nav: $navTrue');
  print('Panjang nav: ${navTrue.length}');
  print('');

  promoActive = false;
  var navFalse = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

  print('Hasil ketika promoActive = false:');
  print('nav: $navFalse');
  print('Panjang nav: ${navFalse.length}');

  // Kode baru yang diperbaiki
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);

  // Hasil kode yang sudah ada...
  var login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print('\nnav2 ketika login sebagai Manager: $nav2');

  login = 'User';
  var nav3 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print('nav3 ketika login sebagai User: $nav3');

  print('\nIsi list1: $list1');
  print('Isi list2: $list2');
  print('Panjang list2: ${list2.length}');
  print('Isi list3: $list3');
  print('Panjang list3: ${list3.length}');
  print('Isi listNIM: $listNIM');
  print('Panjang listNIM: ${listNIM.length}');
}
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.
// Jawab : Tidak terjadi error, manfaat collection for adalah cara singkat untuk membuat list baru dari list yang sudah ada.  
// Daripada menggunakan loop yang panjang, fitur ini memungkinkan untuk mengisi list secara langsung di dalam deklarasi.