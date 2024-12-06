import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/models/makanan_model.dart';

class MakananCard extends StatelessWidget {
  final MakananModel makananModel;
  const MakananCard({super.key, required this.makananModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 20,
      child: Padding(padding: EdgeInsets.all(5),
      child: ListTile(
        leading: Image.network(makananModel.strMealThumb,
        height: 50,
        fit: BoxFit.cover,),
        title: Text(makananModel.strMeal,
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      ),
    );
  }
}