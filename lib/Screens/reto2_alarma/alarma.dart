import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AlarmScreen extends StatefulWidget {
  @override
  _AlarmScreenState createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  bool status1 = false;
  StepperType stepperType = StepperType.vertical;
  int _index = 0;

  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.black12,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          HexColor("#c0fefc"),
                          HexColor("#f5abc9"),
                          HexColor("#ff7b54"),
                          HexColor("#ffd56b"),
                        ],
                      )),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Icon(Icons.close),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 14.0),
                              child: Text(
                                "you did it! here \nou can manage\nyour alarm, \nchange time and \nother things",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 150.0,
                              child: SvgPicture.asset("assets/images/party.svg",
                                  height: 150.0, width: 150.0),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    width: size.width - 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Alarm", style: TextStyle(color: Colors.grey),),
                                FlutterSwitch(
                                  showOnOff: true,
                                  activeTextColor: Colors.grey,
                                  inactiveTextColor: Colors.black,
                                  activeColor: Colors.black,
                                  value: status1,
                                  onToggle: (val) {
                                    setState(() {
                                      status1 = val;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 50,
                            thickness: 2,
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.solidMoon,
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("to bed", style: TextStyle(color: Colors.grey),),
                                        Text("23:30", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, top: 5, bottom: 5),
                                child: Container(height: 40, child: VerticalDivider(color: Colors.grey)),
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 30,
                                        color: Colors.grey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("8 hours sleep", style: TextStyle(color: Colors.grey),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),

                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 22,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, top: 5, bottom: 5),
                                child: Container(height: 40, child: VerticalDivider(color: Colors.grey)),
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.wb_sunny, size: 40, color: Colors.black,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("07:30", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                                        Text("wake up", style: TextStyle(color: Colors.grey),),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
