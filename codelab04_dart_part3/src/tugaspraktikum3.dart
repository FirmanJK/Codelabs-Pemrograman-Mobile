
void main() {
(String, int) ambilDataMahasiswa() {
    // Mengembalikan dua nilai berbeda dalam satu Record
    var nama = 'Mochammad Firmandika Jati Kusuma';
    var nim = 2341720229;
    return (nama, nim);
    }

    void main() {
    var (namaMahasiswa, nimMahasiswa) = ambilDataMahasiswa();
    print('Nama: $namaMahasiswa');
    print('NIM: $nimMahasiswa');
    }
}