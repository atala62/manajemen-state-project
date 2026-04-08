import 'package:flutter/material.dart'; 

void main() {
  runApp(const MyApp()); 
  // Fungsi utama aplikasi Flutter, menjalankan widget MyApp sebagai root widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp adalah root widget untuk aplikasi berbasis Material Design
      home: Scaffold(
        // Scaffold menyediakan struktur dasar UI (appbar, body, floating action button, dsb.)
        body: Center(
          // Center berfungsi untuk menempatkan widget child ke tengah layar
          child: Container(
            // Container digunakan untuk membungkus dan memberi style (padding, warna, dsb.) pada child
            padding: const EdgeInsets.all(24.0), 
            // Memberikan jarak (padding) di semua sisi sebesar 24 pixel
            color: Colors.blueGrey, 
            // Memberikan warna latar belakang container
            child: Column(
              // Column menyusun widget secara vertikal
              mainAxisAlignment: MainAxisAlignment.center, 
              // Menyusun semua children column agar rata tengah secara vertikal
              children: [
                const CircleAvatar(
                  // Widget untuk menampilkan gambar profil berbentuk lingkaran
                  radius: 50.0,                   
                  backgroundImage: NetworkImage('https://placehold.co/100x100/png'),
                ),
                const SizedBox(height: 16.0), 
                // Memberikan jarak vertikal setinggi 16 pixel
                const Text(
                  // Menampilkan teks nama
                  'Nama Anda',
                  style: TextStyle(
                    fontSize: 24.0, 
                    // Ukuran font 24
                    fontWeight: FontWeight.bold, 
                    // Teks dicetak tebal
                    color: Colors.white, 
                    // Warna teks putih
                  ),
                ),
                const SizedBox(height: 8.0), 
                // Memberikan jarak vertikal setinggi 8 pixel
                const Text(
                  // Menampilkan teks deskripsi
                  'Mahasiswa Mobile Programming',
                  style: TextStyle(
                    fontSize: 16.0, 
                    // Ukuran font 16
                    color: Colors.white70, 
                    // Warna teks putih agak transparan
                  ),
                ),
                const SizedBox(height: 16.0), 
                // Memberikan jarak vertikal setinggi 16 pixel
                Row(
                  // Row menyusun widget secara horizontal
                  mainAxisAlignment: MainAxisAlignment.center, 
                  // Semua children row rata tengah
                  children: [
                    const Icon(
                      // Ikon email
                      Icons.email, 
                      color: Colors.white, 
                      // Warna ikon putih
                    ),
                    const SizedBox(width: 8.0), 
                    // Memberikan jarak horizontal 8 pixel
                    const Text(
                      // Menampilkan teks email
                      'emailanda@example.com',
                      style: TextStyle(
                        color: Colors.white, 
                        // Warna teks putih
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


