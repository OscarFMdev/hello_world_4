import 'dart:io';
import 'package:flutter/material.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foto tomada'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          const Text(
            'Imagen guardada en el dispositivo',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Image.file(File(imagePath)),
          ),
        ],
      ),
    );
  }
}
