// Import library Material Design Flutter
import 'package:flutter/material.dart';

// Fungsi utama, titik awal aplikasi Flutter
void main() {
  runApp(const MyApp()); // Menjalankan widget MyApp
}

// Widget utama aplikasi (root)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Menghilangkan tulisan DEBUG di pojok kanan atas
      debugShowCheckedModeBanner: false,

      // Halaman pertama yang ditampilkan
      home: const HomePage(),
    );
  }
}

// Halaman utama aplikasi
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar = header di atas
      appBar: AppBar(
        title: const Text("Contoh Card Flutter"), // Judul AppBar
        centerTitle: true, // Judul berada di tengah
      ),

      // Body = isi halaman
      body: Padding(
        padding: const EdgeInsets.all(16), // Jarak dari tepi layar
        child: SimpleCard(
          title: "Flutter Card", // Judul card
          content: "Ini adalah contoh widget Card sederhana.", // Isi card
        ),
      ),
    );
  }
}

// Widget Card buatan sendiri (reusable)
class SimpleCard extends StatelessWidget {
  // Data yang dikirim dari luar
  final String title;
  final String content;

  const SimpleCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Bayangan card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Sudut membulat
      ),

      // Padding di dalam card
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          // Susun widget ke bawah
          crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri
          mainAxisSize: MainAxisSize.min, // Tinggi mengikuti isi
          children: [
            // Teks judul
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Jarak vertikal
            const SizedBox(height: 8),

            // Teks isi
            Text(content),
          ],
        ),
      ),
    );
  }
}
