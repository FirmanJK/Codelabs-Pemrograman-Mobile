import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Definisikan warna dasar (menggunakan primary color)
    Color color = Theme.of(context).colorScheme.primary;

    // 2. Widget Bagian Info (Nama, Deskripsi, Rating, Waktu)
    final Widget infoSection = Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Judul Resep
          const Text(
            'Ayam Panggang Gandu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),

          // Deskripsi Singkat
          const Text(
            'Ayam Panggang Gandu merupakan kuliner khas dari Desa Gandu, Magetan, Jawa Timur yang terkenal dengan cita rasa daging ayam kampung yang empuk, bumbu yang meresap, dan aroma bakarannya yang menggugah selera',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 16),

          // Rating Section
          _buildRatingSection(color, 4.5, 170),
          const SizedBox(height: 16),

          // Waktu Memasak/Saji Section
          _buildTimeSection(color),
        ],
      ),
    );

    // 3. Widget Gambar Resep
    // Pastikan file 'ayam_panggang.jpg' ada di path ini
    final Widget imageSection = Expanded(
      child: Image.asset(
        'assets/images/ayam_panggang.jpeg', 
        fit: BoxFit.cover,
      ),
    );

    // 4. Struktur Utama (Row dengan dua anak)
    final Widget mainContent = Center(
      child: Container(
        // Batasi lebar total agar tidak terlalu lebar di desktop
        constraints: const BoxConstraints(maxWidth: 850), 
        margin: const EdgeInsets.all(10),
        child: Card(
          elevation: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Bagian Informasi (Kolom)
              Expanded(
                child: infoSection,
              ),
              // Bagian Gambar
              imageSection,
            ],
          ),
        ),
      ),
    );

    return MaterialApp(
      title: 'Ayam Panggang Gandu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Makanan Khas Magetan'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: SingleChildScrollView( // Agar bisa di-scroll jika konten melebihi layar
          child: mainContent,
        ),
      ),
    );
  }

  // --- Fungsi Pembantu ---

  // Membangun bagian rating (bintang dan jumlah ulasan)
  Widget _buildRatingSection(Color color, double rating, int reviewCount) {
    return Row(
      children: [
        // Bintang Rating
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(5, (index) {
            return Icon(
              index < rating.floor() ? Icons.star : Icons.star_border,
              color: Colors.red[500],
              size: 20,
            );
          }),
        ),
        const SizedBox(width: 8),
        // Jumlah Ulasan
        Text(
          '$rating ($reviewCount Ulasan)',
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  // Membangun bagian waktu (persiapan, masak, porsi)
  Widget _buildTimeSection(Color color) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildTimeItem(color, Icons.timer_outlined, 'PREP:', '25 min'),
          _buildTimeItem(color, Icons.watch_later_outlined, 'COOK:', '1 hr 15 min'),
          _buildTimeItem(color, Icons.people_alt_outlined, 'FEEDS:', '4-6'),
        ],
      ),
    );
  }

  // Membangun kolom tunggal untuk waktu
  Column _buildTimeItem(Color color, IconData icon, String label, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color, size: 28),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
