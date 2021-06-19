import 'package:flutter/material.dart';

import './Screens/reto1_login/login.dart';
import './Screens/reto2_alarma/alarma.dart';
import './Screens/reto3_loadingPage/LoadingScreen.dart';
import 'package:reto1_login/Screens/reto4_profilePage/ProfileScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Flutter Demo',
        home: Builder(
          builder: (context) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0.0,
                title: Text('Retos'.toUpperCase(),
                    style: TextStyle(color: Colors.black)),
              ),
              body: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Retos simples"),
                    TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.push(context, new MaterialPageRoute(builder: (context) => new LoginScreen()));
                        },
                        child: Text(
                          "Reto 1 Login Screen",
                          style: TextStyle(color: Colors.white),
                        )),

                    TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.push(context, new MaterialPageRoute(builder: (context) => new AlarmScreen()));
                        },
                        child: Text(
                          "Reto 2 Alarma Screen",
                          style: TextStyle(color: Colors.white),
                        )),

                    TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.push(context, new MaterialPageRoute(builder: (context) => new LoadingScreen()));
                        },
                        child: Text(
                          "Reto 3 Loading Screen",
                          style: TextStyle(color: Colors.white),
                        )),

                    Divider(
                      height: 50,
                      thickness: 2,
                    ),
                    Text("Retos intermedios"),

                    TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.push(context, new MaterialPageRoute(builder: (context) => new ProfileScreen()));
                        },
                        child: Text(
                          "Reto 4 Profile Screen",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              )),
        ));
  }
}
