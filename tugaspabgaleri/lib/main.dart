import 'package:flutter/material.dart';

void main() {
  runApp(const GaleriFotoApp());
}

class GaleriFotoApp extends StatelessWidget {
  const GaleriFotoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri Foto',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GaleriFoto(),
    );
  }
}

class GaleriFoto extends StatelessWidget {
  const GaleriFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Galeri Foto',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/Jalan_Barcelona.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            // Container pembungkus seluruh konten teks di bawah gambar
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 4, bottom: 8),
                    child: const Text(
                      'Jalan di Barcelona',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  // Garis pembatas pertama
                  Divider(
                    height: 24,
                    thickness: 1,
                    color: Colors.grey.shade300,
                  ),

                  // Baris informasi Lokasi (menggunakan Icons.place sesuai Slide 20)
                  const Row(
                    children: [
                      Icon(
                        Icons.place,
                        color: Colors.red,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Lokasi: Barcelona, Spanyol',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  // Baris informasi Publikasi (menggunakan Icons.calendar_month sesuai Slide 20)
                  const Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.blue,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Publikasi: 13 Agustus 2013',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),

                  // Garis pembatas kedua
                  Divider(
                    height: 24,
                    thickness: 1,
                    color: Colors.grey.shade300,
                  ),

                  // Subjudul Deskripsi
                  Container(
                    margin: const EdgeInsets.only(top: 4, bottom: 8),
                    child: const Text(
                      'Deskripsi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  // Isi paragraf deskripsi (rata kanan-kiri sesuai gambar)
                  const Text(
                    'Sebuah persimpangan jalan di Barcelona, Spanyol. '
                    'Foto ini menampilkan berbagai kendaraan yang bergerak '
                    'dalam arah yang berbeda, menciptakan pemandangan '
                    'yang sibuk dan energik.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.3,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}