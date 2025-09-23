// Praktikum 1: Eksperimen Tipe Data List
// Langkah 1 :
// void main() {

//  var list = [1, 2, 3];
//  assert(list.length == 3);
//  assert(list[1] == 2);
//  print(list.length);
//  print(list[1]);

//  list[1] = 1;
//  assert(list[1] == 1);
//  print(list[1]);
// }
// Langkah 2 :
// Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
// Jawab : Kode pada langkah 1 berhasil dieksekusi tanpa error. Kode tersebut membuat sebuah list dengan tiga elemen yaitu 1, 2, dan 3.
// Kemudian, kode tersebut memeriksa panjang list dan nilai pada indeks ke-1 menggunakan assert, yang memastikan bahwa kondisi tersebut benar.
// Setelah itu, kode mencetak panjang list dan nilai pada indeks ke-1. 
// Selanjutnya, kode mengubah nilai pada indeks ke-1 menjadi 1 dan memeriksa kembali nilainya menggunakan assert, lalu mencetak nilai yang telah diubah. 
// Hasil akhirnya adalah panjang list tetap 3, dan nilai pada indeks ke-1 berubah dari 2 menjadi 1. 

// Langkah 3 :
// Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. 
// Lalu print dan capture hasilnya. 
void main() {
  final list = List<dynamic>.filled(5, null);
  
  list[1] = 'Mochammad Firmandika Jati Kusuma';
  list[2] = '2341720229';

  // Menampilkan hasil
  print('List awal:');
  print(list);

  print('\nElemen pada indeks ke-1: ${list[1]}');
  print('Elemen pada indeks ke-2: ${list[2]}');
  print('Panjang list: ${list.length}');
}
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
// jawab : Saya mendapatkan kesalahan karena list yang saya buat di awal hanya memiliki 3 elemen, sehingga tidak ada ruang untuk mengisi elemen kelima. 
// Untuk memperbaikinya, saya perlu membuat list dengan panjang 5 sejak awal menggunakan perintah List.filled(5, null). 
// Cara ini menciptakan list dengan lima "slot" kosong (bernilai null) yang siap diisi. Setelah itu, saya bisa langsung mengisi nama dan NIM saya pada indeks ke-1 dan ke-2. 
// Jadi, kode yang benar adalah final list = List<dynamic>.filled(5, null); lalu list[1] = 'Nama Anda'; dan list[2] = 'NIM Anda';.   
