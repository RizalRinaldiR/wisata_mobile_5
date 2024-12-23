import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreens/makananapiscreen9.dart';
import 'package:wisata_mobile_5/screens/detaildestinationscreeen.dart';
import 'package:wisata_mobile_5/screens/homescreen.dart';
// import 'package:wisata_mobile_5/materimodulscreens/formscreen6.dart';
// import 'package:wisata_mobile_5/screens/detaildestinationscreeen.dart';
// import 'package:wisata_mobile_5/screens/homescreen.dart';
// import 'package:wisata_mobile_5/screens/splashscreen.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MakananAPIScreen9(),
    );
  }
}
