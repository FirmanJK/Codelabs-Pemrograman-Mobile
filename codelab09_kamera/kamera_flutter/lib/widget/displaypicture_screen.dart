import 'dart:io'; // Penting untuk menggunakan kelas File
import 'package:flutter/material.dart';

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget {
  // Path ke file gambar yang diambil dari kamera
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture - 2341720229')),
      // Gambar disimpan sebagai file di perangkat. Gunakan konstruktor `Image.file`
      // dengan path yang diberikan untuk menampilkan gambar.
      body: Image.file(File(imagePath)),
    );
  }
}
