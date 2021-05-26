import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const facebookColor = const Color(0x3b5998);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Icon(Icons.filter_alt, color: Colors.black),
          title: Text('Sales Top'.toUpperCase(),
              style: TextStyle(color: Colors.black)),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                width: size.width,
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: size.width,
                child: Column(
                  children: [
                    Text(
                      "Hello!",
                      style:
                          TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Welcome to Sales TOP A Platform To\n Manage Real State Needs",
                        style: TextStyle(fontSize: 22, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 150.0,
                          child: TextButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                              onPressed: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              )),
                        ),
                        SizedBox(
                          width: 150.0,
                          child: TextButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.black)))),
                              onPressed: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              )),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Or via social media",
                            style: TextStyle(color: Colors.grey)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: HexColor("#3b5998"),
                                child: IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.facebookF,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {}),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                                child: CircleAvatar(
                                  backgroundColor: HexColor("#DB4437"),
                                    child: FaIcon(
                                      FontAwesomeIcons.google,
                                      color: Colors.white,
                                    ), // Icon widget changed with FaIcon
                              )),
                              CircleAvatar(
                                backgroundColor: HexColor("#007bb5"),
                                child: IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.linkedinIn,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {}),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
