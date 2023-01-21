import 'package:flutter/material.dart';

class ListeCommandePage extends StatefulWidget {
  const ListeCommandePage({super.key});

  @override
  ListeCommandePageState createState() => ListeCommandePageState();
}

class ListeCommandePageState extends State<ListeCommandePage> {
  int _selectedIndex = 0;
  late int index;
  late int lenght = 6;
  final List<String> items = List<String>.generate(5, (index) => '$index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
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
                    fontWeight: FontWeight.w400),
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
        body: ListView.separated(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                height: 60,
                width: 60,
                color: Colors.deepPurple,
              ),
              title: Text(
                "Produit $index",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "Qte:1",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
              trailing: Wrap(
                children: [
                  Icon(
                    Icons.chevron_right,
                    color: Color(0xff098AA6),
                  )
                ],
              ),
              shape: Border(bottom: BorderSide(color: Color(0xff616161))),
            );
          },
          separatorBuilder: ((context, index) {
            return Divider(thickness: 2);
          }),
        ));
  }
}
