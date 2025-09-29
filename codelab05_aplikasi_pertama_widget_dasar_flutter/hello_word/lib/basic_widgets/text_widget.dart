import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Nama saya Firman,  sedang belajar Pemrograman Mobile",
      style: TextStyle(color: Colors.red, fontSize:14),
      textAlign: TextAlign.center);
  }
}
