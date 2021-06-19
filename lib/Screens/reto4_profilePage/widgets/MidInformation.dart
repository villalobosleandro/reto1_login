import 'package:flutter/material.dart';

class MidInformation extends StatefulWidget {
  @override
  _MidInformationState createState() => _MidInformationState();
}

class _MidInformationState extends State<MidInformation> {
  final String josefinRegular = 'JosefinRegular';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
//        color:  Color(0xff5563FF),
        width: (MediaQuery.of(context).size.width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("250", style: TextStyle(fontSize: 14.0, color:  Color(0xff5563FF), fontFamily: josefinRegular),),
                    Text("Reviews", style: TextStyle(fontSize: 14.0, color: Colors.grey, fontFamily: josefinRegular),),
                  ],
                ),

                Container(height: 20, child: VerticalDivider(color: Colors.grey)),

                Column(
                  children: [
                    Text("100k", style: TextStyle(fontSize: 14.0, color:  Color(0xff5563FF), fontFamily: josefinRegular),),
                    Text("Followers", style: TextStyle(fontSize: 14.0, color: Colors.grey, fontFamily: josefinRegular),),
                  ],
                ),

                Container(height: 20, child: VerticalDivider(color: Colors.grey)),

                Column(
                  children: [
                    Text("30", style: TextStyle(fontSize: 14.0, color:  Color(0xff5563FF), fontFamily: josefinRegular),),
                    Text("Following", style: TextStyle(fontSize: 14.0, color: Colors.grey, fontFamily: josefinRegular),),
                  ],
                ),

              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 150.0,
                    child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(
                                 Color(0xff5563FF)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                        onPressed: () {},
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: josefinRegular,
                                fontSize: 16.0
                            ),
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
                                    BorderRadius.circular(5.0),
                                    side: BorderSide(
                                        color: Colors.grey)))),
                        onPressed: () {},
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Settings",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: josefinRegular,
                                fontSize: 16.0
                            ),
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
