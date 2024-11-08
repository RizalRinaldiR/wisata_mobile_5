import 'package:flutter/material.dart';

class Mystatefulwidget extends StatefulWidget {
  const Mystatefulwidget({super.key});

  @override
  State<Mystatefulwidget> createState() => _MystatefulwidgetState();
}

class _MystatefulwidgetState extends State<Mystatefulwidget> {
  var _jumlahhitungan = 0;

  void _tambahangka() {
    setState(() {
      _jumlahhitungan++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ini stateful widget",
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, // agar konten berada di tengah
          children: [
            Text("$_jumlahhitungan"),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: _tambahangka, // Memanggil fungsi langsung
              child: Text("tekan tombol ini"),
            )
          ],
        ),
      ),
    );
  }
}
