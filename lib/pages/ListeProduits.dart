import 'package:flutter/material.dart';
import 'package:tp_inapp/components/addProduit.dart';

class ListeProduitsPage extends StatefulWidget {
  const ListeProduitsPage({super.key});

  @override
  ListeProduitsPageState createState() => ListeProduitsPageState();
}

class ListeProduitsPageState extends State<ListeProduitsPage> {
  late int index;
  late int lenght = 7;
  final List<String> items = List<String>.generate(7, (index) => '$index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddProductPage()),
                  );
                }),
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
          scrollDirection: Axis.vertical,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                height: 60,
                width: 60,
                color: Color(0xff26C4EC),
              ),
              title: Text(
                "Produit $index",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "En rupture de stock",
                style: TextStyle(
                    color: Color(0xffFF0000),
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
