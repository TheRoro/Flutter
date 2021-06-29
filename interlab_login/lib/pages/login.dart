import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const url = 'https://8rb.github.io/Interlab-Landing-Page/';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
          Container(
            height: 250,
            width: 600,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: 600,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/img/brandLogo.png',
                        width: 100.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  width: 600,
                  child: Stack(
                    children: [
                      Image.asset('assets/img/TitleBG.png',
                          width: 420.0, height: 550.0, fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Bienvenido a',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25.0),
                            ),
                            Text(
                              'Interlab',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Inicia sesión en tu cuenta',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 400,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: TextField(
                      cursorColor: Color.fromRGBO(44, 48, 91, 1.0),
                      decoration: InputDecoration(
                          labelText: 'Nombre de usuario',
                          hintText: 'student@interlab.com',
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(44, 48, 91, 1.0),
                              fontSize: 13),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(44, 48, 91, 1.0),
                              fontWeight: FontWeight.w400),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(44, 48, 91, 1.0),
                                width: 2),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(44, 48, 91, 1.0),
                                width: 3),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(44, 48, 91, 1.0),
                                width: 2),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: TextField(
                      cursorColor: Color.fromRGBO(44, 48, 91, 1.0),
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(44, 48, 91, 1.0),
                            fontWeight: FontWeight.w400),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(44, 48, 91, 1.0), width: 2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(44, 48, 91, 1.0), width: 3),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(44, 48, 91, 1.0), width: 2),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Crear cuenta',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 116, 161, 1.0),
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0),
                      ),
                      Text(
                        'Olvidaste tu contraseña',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 116, 161, 1.0),
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(44, 48, 91, 1.0),
                        shadowColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(vertical: 17, horizontal: 100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Text(
                      'INICIAR SESIÓN',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: ElevatedButton(
                    onPressed: _launchURL,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      onSurface: Colors.grey,
                      shadowColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                      side: BorderSide(color: Colors.black45, width: 1),
                    ),
                    child: Text(
                      'SABER MÁS',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]))));
  }
}

void _launchURL() async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
