import 'package:flutter/material.dart';

import './Screens/reto1_login/login.dart';
import './Screens/reto2_alarma/alarma.dart';
import './Screens/reto3_loadingPage/LoadingScreen.dart';

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
                  ],
                ),
              )),
        ));
  }
}
