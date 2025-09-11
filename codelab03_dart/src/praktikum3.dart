// Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"

 // void main() {
  // for (Index = 10; index < 27; index) {  
  //  print(Index);
   // }
  // Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. 
  // Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
  // Jawab : Terjadi error karena variabel 'Index' belum dideklarasikan sebelum digunakan dan penulisan 'Index' harus konsisten (besar/kecil).
  // Sehingga perlu diganti menjadi 'index' pada semua bagiannya agar konsisten dan dideklarasikan dengan tipe data 'int'.
  // Selain itu, pada bagian increment perlu ditambahkan operator '++' untuk menambah nilai index setiap iterasi.
  // print('Index'); juga perlu diganti menjadi print(index); agar sesuai dengan nama variabel yang telah dideklarasikan.
  // Setelah memperbaiki kesalahan tersebut, kode akan berjalan dengan benar dan mencetak nilai index dari 10 hingga 26.
  // Sehingga output yang dihasilkan adalah 10, 11, 12, ..., 26.
  // Berikut adalah kode yang telah diperbaiki :
void main() {
  for (int index = 10; index < 27; index++) {
    print('index');
  }

  // If (Index == 21) break;
  // Else If (index > 1 || index < 7) continue;
  // print(index);
  // Apa yang terjadi ? Jika terjadi error, 
  // silakan perbaiki namun tetap menggunakan for dan break-continue.
  // Jawab : Terjadi error karena pada penggunaan 'If' dan 'Else If' harus diawali dengan huruf kecil
  // menjadi 'if' dan 'else if'. Selain itu, kondisi pada 'else if' juga perlu diperbaiki.
  // Setelah memperbaiki kesalahan tersebut, kode akan berjalan dengan benar.
  // Kode akan mencetak nilai index dari 0 hingga 24,
  // namun akan berhenti ketika index mencapai 21 (karena break)
  // dan melewati nilai index antara 2 hingga 6 (karena continue).
  // Sehingga output yang dihasilkan adalah 0, 1, 7, 8, 9, ..., 20.
  // Berikut adalah kode yang telah diperbaiki :
  for (int index = 10; index < 27; index++) {
  if (index == 21) {
    break;
  }
  if (index > 1 && index < 7) {
    continue;
  }
  print(index);
  }
}