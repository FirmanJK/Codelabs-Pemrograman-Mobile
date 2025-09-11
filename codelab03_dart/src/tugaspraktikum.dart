// TUGAS PRAKTIKUM
// Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. 
// Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

void main() {
  String nama = "Mochammad Firmandika Jati Kusuma";
  String nim = "2341720229";

  for (int i = 2; i <= 201; i++) {
    bool isPrime = true;
    for (int j = 2; j <= i / 2; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      print("$i - $nama - $nim");
    }
  }
}
