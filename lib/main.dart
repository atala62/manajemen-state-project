import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        fontFamily: 'Times New Roman', // ubah font
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.blue,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Nama: Muhammad Athallah",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              "Kelas: 19.4B.04",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              "Program Studi: Sistem Informasi (S1)",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}