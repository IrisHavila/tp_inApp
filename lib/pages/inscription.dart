import 'dart:ui';
import 'connexion.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  SigninPageState createState() => SigninPageState();
}

class SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();

  late String _email;
  late String _password;

  bool _isSigninForm = true;

  void _toggleForm() {
    setState(() {
      _isSigninForm = !_isSigninForm;
    });
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      if (_isSigninForm) {
        // Log the user in
      } else {
        // Sign the user up
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Container(
            decoration: BoxDecoration(color: Colors.black),
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
            child: Form(
                child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60.0,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  height: 150.0,
                  width: 150.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Text(
                    'Inscription',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 320.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF545454)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      filled: true,
                      fillColor: Color(0xFF212121),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Email cannot be empty' : null,
                    onSaved: (value) => _email = value!,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: 320.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Mot de passe',
                      hintStyle: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF545454)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      filled: true,
                      fillColor: Color(0xFF212121),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Password cannot be empty' : null,
                    onSaved: (value) => _password = value!,
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: 320.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Confirmation du mot de passe',
                      hintStyle: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF545454)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      filled: true,
                      fillColor: Color(0xFF212121),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: Text(
                    "Vous avez dejà un compte?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 40.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      child: Text(
                        "Connectez-vous",
                        style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF098AA6)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return LoginPage();
                          }),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  height: 55.0,
                  width: 150.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF098AA6)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return Dashboard();
                        }),
                      );
                    },
                    child: Text(
                      'Suivant',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
