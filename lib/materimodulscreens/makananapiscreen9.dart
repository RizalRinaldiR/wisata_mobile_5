import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/models/makanan_model.dart';
import 'package:wisata_mobile_5/services/makanan_services.dart';
import 'package:wisata_mobile_5/widgets/makanan_card.dart';

class MakananAPIScreen9 extends StatelessWidget {
  final MakananService _makananService = MakananService();


  MakananAPIScreen9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('daftar makanan seafood',
      style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blueAccent,
      ),
      body: FutureBuilder <List<MakananModel>>(
        future: _makananService.fetchMakanan(),
        builder:(context,snapshot){
          if (snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }else if (snapshot.hasError){
            return Center(child: Text('error : ${snapshot.error}'));
          } else {
            final daftarSeaFood = snapshot.data!;
            return ListView.builder(itemCount: daftarSeaFood.length,itemBuilder: (context,index){
              return MakananCard(makananModel: daftarSeaFood[index]);
            },);
          }
        }
      ),
    );
  }
}