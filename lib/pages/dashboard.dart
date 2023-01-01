import 'dart:ui';
import 'inscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolbar/flutter_toolbar.dart';

class Dashboard extends StatelessWidget {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produit' 'Tableau de bord'),
        backgroundColor: Color(0xFF111111),
        toolbarHeight: 100.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(({
            _selectedIndex = index,
          }));
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Boutiques'),
          BottomNavigationBarItem(icon: Icon(Icons.notes), label: 'Commandes'),
          BottomNavigationBarItem(icon: Icon(Icons.gif_box), label: 'Produits'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Paramètres'),
        ],
      ),
    );
  }

  void setState(Set<int> set) {}
}
