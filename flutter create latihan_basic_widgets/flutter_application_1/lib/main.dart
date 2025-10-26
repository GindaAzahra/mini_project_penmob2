import 'package:flutter/material.dart';

void main() {
  runApp(LatihanTiga());
}

class LatihanTiga extends StatelessWidget {
  final List<Map<String, String>> kontak = [
    {'nama': 'Tekno', 'email': 'tekno@test.com'},
    {'nama': 'Tekni', 'email': 'tekni@test.com'},
    {'nama': 'Tekna', 'email': 'tekna@test.com'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Latihan 3 - ListTile')),
        body: ListView(
          children: kontak.map((data) {
            return ListTile(
              title: Text(data['nama']!, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(data['email']!),
            );
          }).toList(),
        ),
      ),
    );
  }
}