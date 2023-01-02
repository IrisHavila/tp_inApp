import 'dart:ui';
import 'connexion.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:flutter/widgets.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  DashboardPageState createState() => DashboardPageState();
}

class Boutique extends StatelessWidget {
  const Boutique({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Color(0xff111111),
            automaticallyImplyLeading: false,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tableau de bord',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Flutter Shop',
                  style: TextStyle(
                      color: Color(0xff616161),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            bottom: TabBar(
              //tabbar at bottom of appbar
              onTap: (index) {},
              tabs: [
                Tab(
                  text: "Aujourd'hui",
                ),
                Tab(
                  text: "Cette semaine",
                ),
                Tab(
                  text: "Ce mois",
                ),
                Tab(
                  text: "Cette année",
                ),
                //more tabs here
              ],
            ),
            actions: [],
          ),
          body: TabBarView(children: [
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.orange,
            ),
          ]),
        ));
  }
}

//Commandes
class Commandes extends StatelessWidget {
  const Commandes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext) {
    return Container(
      color: const Color(0xff000000),
      child: Center(
          child: Text(
        "Commandes",
        style: TextStyle(color: Colors.white, fontSize: 45),
      )),
    );
  }
}

//Produits
class Produits extends StatelessWidget {
  const Produits({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext) {
    return Container(
      color: const Color(0xff000000),
      child: Center(
          child: Text(
        "Produit",
        style: TextStyle(color: Colors.white, fontSize: 45),
      )),
    );
  }
}

//Paramètres
class Parametre extends StatelessWidget {
  const Parametre({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext) {
    return Container(
      color: const Color(0xff000000),
      child: Center(
          child: Text(
        "Paramètres",
        style: TextStyle(color: Colors.white, fontSize: 45),
      )),
    );
  }
}

class DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Boutique(),
    Commandes(),
    Produits(),
    Parametre(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          decoration: BoxDecoration(
            border:
                Border(top: BorderSide(color: Color(0xff616161), width: 0.4)),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: _selectedIndex,
            selectedItemColor: Color(0xff098AA6),
            unselectedItemColor: Color(0xff616161),
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.shop,
                  size: 22,
                ),
                label: 'Boutique',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notes,
                    size: 22,
                  ),
                  backgroundColor: Colors.black,
                  label: 'Commandes'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_box,
                    size: 22,
                  ),
                  backgroundColor: Colors.black,
                  label: 'Produits'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    size: 22,
                  ),
                  backgroundColor: Colors.black,
                  label: 'Paramètres'),
            ],
          ),
        ),
      ),
    );
  }
}

//Boutique
