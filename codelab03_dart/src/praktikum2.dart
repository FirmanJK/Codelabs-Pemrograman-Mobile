// Praktikum 2: Menerapkan Perulangan "while" dan "do-while"

// void main() {
  // while (counter < 33) {
    // print(counter);
    // counter++;
  //}
  // Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. 
  // Apa yang terjadi? Jelaskan! 
  // Lalu perbaiki jika terjadi error.
  // Jawab : Terjadi error karena variabel 'counter' belum dideklarasikan sebelum digunakan.
  // Setelah memperbaiki kesalahan tersebut, kode akan berjalan dengan benar
  // dan mencetak nilai counter dari 0 hingga 32.
  // Berikut adalah kode yang telah diperbaiki :
void main() {
  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }

  do {
    print(counter);
    counter++;
  } while (counter < 77);
  // Apa yang terjadi ? Jika terjadi error, 
  // silakan perbaiki namun tetap menggunakan do-while.
  // Jawab : Kode berjalan dengan mencetak nilai counter dari 33 sampai 76
  // karena kondisi pada do-while terpenuhi selama counter < 77
  // sehingga selama kondisi terpenuhi, blok kode di dalam do-while akan terus dieksekusi.
  // Setelah counter mencapai 77, kondisi pada do-while menjadi false
  // sehingga perulangan berhenti.
  
}
