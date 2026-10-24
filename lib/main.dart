import 'package:flutter/material.dart';

void main() {
  runApp(const KartuSalam(nama: 'Rusdi'));
}

class KartuSalam extends StatelessWidget {
  final String nama;

  const KartuSalam({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profil'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
            const CircleAvatar(
            radius: 32,
            child: Icon(Icons.person),
          ),

                  const SizedBox(width: 16),

                  // Nama dan NIM
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nama,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text('NIM 3012410055'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}