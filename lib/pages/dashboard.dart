import 'dart:ui';
import 'connexion.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:flutter/widgets.dart';
import 'addProduit.dart';

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
              child: Column(
                children: [],
              ),
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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Color(0xff111111),
        automaticallyImplyLeading: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Commandes',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Toutes les commandes',
              style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.add,
                color: Color(0xff098AA6),
                size: 25,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.search,
                color: Color(0xff098AA6),
                size: 25,
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "En attente de votre premiere commande",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.asset(
                'assets/images/Group1.png',
                height: 320.0,
                width: 320.0,
              ),
              Text(
                "Decouvrez comment augmenter vos ventes",
                style: TextStyle(fontSize: 15, color: Color(0xff616161)),
              ),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 40.0,
                width: 180.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF098AA6)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'En apprendre plus',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Produits
class Produits extends StatelessWidget {
  const Produits({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Color(0xff111111),
        automaticallyImplyLeading: false,
        title: Text(
          "Produits",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.add,
                color: Color(0xff098AA6),
                size: 25,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.search,
                color: Color(0xff098AA6),
                size: 25,
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "En attente de votre premier produit",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.asset(
                'assets/images/Group1.png',
                height: 350.0,
                width: 350.0,
              ),
            ],
          ),
        ),
      ),
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
                  Icons.store,
                  size: 22,
                ),
                label: 'Boutique',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.article,
                    size: 22,
                  ),
                  backgroundColor: Colors.black,
                  label: 'Commandes'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag,
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
