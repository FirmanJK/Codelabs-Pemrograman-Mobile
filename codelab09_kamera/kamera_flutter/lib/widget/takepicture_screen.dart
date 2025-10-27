import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'displaypicture_screen.dart';

// A screen that allows users to take a picture using a given camera.
class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  // Variabel untuk menyimpan CameraController
  late CameraController _controller;
  // Variabel untuk menyimpan Future yang dikembalikan dari inisialisasi controller
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // 1. Membuat CameraController
    _controller = CameraController(
      // Mendapatkan kamera spesifik yang dikirimkan melalui widget
      widget.camera,
      // Menentukan resolusi yang akan digunakan
      ResolutionPreset.medium,
    );

    // 2. Menginisialisasi controller
    // Ini mengembalikan Future yang harus ditunggu sebelum menggunakan kamera
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // 3. Membuang (dispose) controller saat widget dibuang (disposed)
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Fill this out in the next steps.
    // return Container(
        // Pada langkah selanjutnya, Anda akan menambahkan FutureBuilder di sini 
        // untuk menampilkan pratinjau kamera setelah inisialisasi selesai.
        return Scaffold(
        appBar: AppBar(title: const Text('Take a picture - 2341720229')),
      // You must wait until the controller is initialized before displaying the
      // camera preview. Use a FutureBuilder to display a loading spinner until the
      // controller has finished initializing.
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading indicator.
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),

      floatingActionButton: FloatingActionButton(
        // Sediakan callback onPressed.
        onPressed: () async {
          // Ambil Foto dalam blok try / catch. Jika terjadi kesalahan,
          // tangkap kesalahannya.
          try {
            // Pastikan bahwa kamera telah diinisialisasi.
            await _initializeControllerFuture;

            // Coba ambil gambar dan kemudian dapatkan lokasi
            // tempat file gambar disimpan.
            final image = await _controller.takePicture();

            if (!context.mounted) return;

            // Anda dapat menambahkan navigasi ke layar tampilan foto di sini, 
            // menggunakan 'image.path' untuk mendapatkan lokasi file.
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(
                  // Kirimkan path ke file gambar yang diambil ke layar DisplayPictureScreen
                  imagePath: image.path,
                ),
              ),
            );  
          } catch (e) {
            // Jika terjadi kesalahan, log kesalahannya ke konsol.
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ), // Akhir dari floatingActionButton
    );
  }
}
