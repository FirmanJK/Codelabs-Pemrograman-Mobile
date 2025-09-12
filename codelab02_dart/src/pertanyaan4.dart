void main() {
  // 1. Variabel Non-Nullable (Tidak bisa null)
  String nama = 'Firman';

  // Baris kode di bawah ini akan error (compile-time error)
  // karena variabel 'nama' tidak diizinkan untuk bernilai null.
  // nama = null; 

  print('Nama: $nama');

// -------------------------------------------------------------

  // 2. Variabel Nullable (Bisa null)
  String? namaPanggilan; // Variabel ini diinisialisasi dengan nilai default: null

  // Variabel 'namaPanggilan' bisa diisi dengan nilai String
  namaPanggilan = 'Dika';
  print('Nama Panggilan: $namaPanggilan');

  // Variabel 'namaPanggilan' juga bisa diisi dengan nilai null
  namaPanggilan = null;
  print('Nama Panggilan: $namaPanggilan');

  // Untuk menggunakan variabel nullable dengan aman, 
  // kita perlu memeriksa apakah nilainya null atau tidak.
  // Salah satu caranya adalah dengan null-aware operator '??'
  String hasil = namaPanggilan ?? 'Tidak ada nama panggilan';
  print('Hasil Pengecekan: $hasil');
}