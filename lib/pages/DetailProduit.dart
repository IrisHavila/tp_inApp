import 'package:flutter/material.dart';
import 'package:tp_inapp/components/addProduit.dart';

class DetailProduitPage extends StatefulWidget {
  const DetailProduitPage({super.key});

  @override
  DetailProduitPageState createState() => DetailProduitPageState();
}

class DetailProduitPageState extends State<DetailProduitPage> {
  late int index;
  late int lenght = 7;
  final List<String> items = List<String>.generate(7, (index) => '$index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          SizedBox(
            height: 250.0,
            
          )
        ]),
      ),
    );
  }
}
