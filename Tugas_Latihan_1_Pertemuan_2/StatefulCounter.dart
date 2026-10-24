import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: CounterPage()));
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void tambahin() {
    setState(() {
      counter++;
    });
  }

  void kurangin() {
    setState(() {
      counter--;
    });
  }

  void nilaiAwal() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter menggunakan setState pada tiap fungsi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: kurangin,
                  child: const Text('Kurangi Nilai'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: nilaiAwal,
                  child: const Text('Nilai Awal'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: tambahin,
                  child: const Text('Tambah Nilai'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
