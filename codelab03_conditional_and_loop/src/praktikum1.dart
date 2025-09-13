// Praktikum 1: Menerapkan Control Flows ("if/else")

// void main() {
//  String test = "test2";
// if (test == "test1") {
//   print("Test1");
// } else If (test == "test2") {
//   print("Test2");
// } Else {
//   print("Something else");
// }

// if (test == "test2") print("Test2 again");

  //Silakan coba eksekusi (Run) kode pada langkah 1 tersebut.
  // Apa yang terjadi? Jelaskan!
  // Jawab : Terjadi error karena pada penggunaan 'If' dan 'Else' harus diawali dengan huruf kecil
  // menjadi 'if' dan 'else'. Selain itu, kondisi pada 'else if' juga perlu diperbaiki.
  // Setelah memperbaiki kesalahan tersebut, kode akan berjalan dengan benar. 
  // Kode akan memeriksa nilai variabel 'test' dan mencetak "Test2"
  // karena nilai 'test' adalah "test2" yang sesuai dengan kondisi pada 'else
  // if'. Jika nilai 'test' tidak sesuai dengan kondisi manapun,
  // maka blok kode pada 'else' akan dieksekusi dan mencetak "Something else".
  // Berikut adalah kode yang telah diperbaiki :
void main() {
 String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }
  if (test == "test2") print("Test2 again");

  //String test = "true";
  //if (test) {
  //print("Kebenaran");
  // Apa yang terjadi ? Jika terjadi error,
  // silakan perbaiki namun tetap menggunakan if/else.
  // Jawab : Error karena kondisi pada if harus berupa boolean,
  // sedangkan pada kode di atas kondisi if berupa String
  // sehingga perlu dibandingkan dengan nilai String lainnya
  // agar menghasilkan nilai boolean.
  // Perbaikan :

  String testValue = "true";
  if (testValue == "true") 
  print("Kebenaran");
}
