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
            //Image jalan barcelona
            Image.asset(
              'assets/images/Jalan_Barcelona.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),

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

                  //Garis Pertama
                  Divider(
                    height: 24,
                    thickness: 1,
                    color: Colors.grey.shade300,
                  ),

                  //Lokasi
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

                  //Publikasi
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

                  //Garis kedua
                  Divider(
                    height: 24,
                    thickness: 1,
                    color: Colors.grey.shade300,
                  ),

                  // Deskripsi
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

                  // Deskripsi
                  const Text(
                    'Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.',
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