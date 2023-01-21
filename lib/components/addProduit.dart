import 'dart:ui';
import '../pages/connexion.dart';
import 'package:flutter/material.dart';
import '../pages/dashboard.dart';
import 'package:select_form_field/select_form_field.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  AddProductPageState createState() => AddProductPageState();
}

class AddProductPageState extends State<AddProductPage> {
  final _formKey1 = GlobalKey<FormState>();

  late String intitule;
  late String categorie;
  late String description;
  late String prix;
  late int quantite;

  final List<Map<String, dynamic>> _items = [
    {'value': 'AABBAA'},
    {'value': 'AABBCC'},
    {'value': 'BBBBAA'},
    {'value': 'AABBCA'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color(0xff111111),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          color: Color(0xff098AA6),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Produits()),
            );
          },
        ),
        actions: <Widget>[
          new Center(
            child: Text(
              "Produits       ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(children: <Widget>[
            SizedBox(
                height: 140.0,
                width: 500.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              side: BorderSide(color: Color(0xff616161))))),
                  onPressed: () {},
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(20)),
                      Icon(
                        Icons.add_a_photo,
                        color: Color(0xff616161),
                      ),
                      Text(
                        "Ajouter une image du produit",
                        style:
                            TextStyle(color: Color(0xff545454), fontSize: 12),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 25.0,
            ),
            Form(
                child: Column(
              children: <Widget>[
                Container(
                  width: 300,
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: "Intitulé du produit",
                      labelStyle: TextStyle(
                        color: Color(0xff545454),
                        fontSize: 15.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      filled: true,
                      fillColor: Color(0xFF212121),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Intitule cannot be empty' : null,
                    onSaved: (value) => intitule = value!,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color(0xff212121),
                    border: Border.all(width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SelectFormField(
                    type: SelectFormFieldType.dropdown,
                    initialValue: 'AAABBB',
                    icon: Icon(
                      Icons.format_shapes,
                      color: Color(0xff098AA6),
                    ),
                    hintText: 'Cetegorie du produit',
                    style: TextStyle(
                      color: Color(0xff545454),
                      fontSize: 15.0,
                    ),
                    items: _items,
                    onChanged: (value) => print(value),
                    onSaved: (val) => print(val),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    minLines: 2,
                    maxLines: 4,
                    decoration: InputDecoration(
                      labelText: "Description du produit",
                      labelStyle: TextStyle(
                        color: Color(0xff545454),
                        fontSize: 15.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      filled: true,
                      fillColor: Color(0xFF212121),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Description cannot be empty' : null,
                    onSaved: (value) => description = value!,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: "Prix du produit",
                      labelStyle: TextStyle(
                        color: Color(0xff545454),
                        fontSize: 15.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      filled: true,
                      fillColor: Color(0xFF212121),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Prix cannot be empty' : null,
                    onSaved: (value) => prix = value!,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: "Quantité de produit à ajouter au stock",
                      labelStyle: TextStyle(
                        color: Color(0xff545454),
                        fontSize: 15.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      filled: true,
                      fillColor: Color(0xFF212121),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  height: 45.0,
                  width: 100.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF098AA6)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10.0)))),
                    onPressed: () {},
                    child: Text(
                      'Ajouter',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
