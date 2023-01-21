import 'dart:ui';
import 'inscription.dart';
import 'package:flutter/material.dart';

class ProduitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produit'),
        backgroundColor: Color(0xFF111111),
        toolbarHeight: 100.0,
        actions: [Icon(Icons.search), Icon(Icons.add)],
        actionsIconTheme: IconThemeData(color: Color(0xFF098AA6)),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
        ),
      ),
    );
  }
}
