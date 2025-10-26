import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi 🩷'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tentang Aplikasi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Profile Card App ini dibuat sebagai mini project Flutter.\n\n'
              'Aplikasi ini menampilkan data profil sederhana '
              'dan memungkinkan pengguna untuk mengubah nama, email, serta nomor telepon.\n\n'
              'Selain itu, aplikasi juga memiliki fitur pergantian tema otomatis '
              'berdasarkan pengaturan sistem perangkat.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
