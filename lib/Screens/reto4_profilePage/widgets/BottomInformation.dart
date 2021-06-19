import 'package:flutter/material.dart';

class BottomInformation extends StatefulWidget {
  @override
  _BottomInformationState createState() => _BottomInformationState();
}

class _BottomInformationState extends State<BottomInformation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 40),
      height: 320.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 6),
              blurRadius: 10)
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                FadeInImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://images.unsplash.com/photo-1504754524776-8f4f37790ca0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGZvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'),
                  placeholder: AssetImage('assets/images/loading.gif'),
                ),

                Positioned(
                  right: 20.0,
                  top: 10.0,
                  child: Container(
                    width: 70.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.star, color: Colors.yellow,),
                        Text("4.2", style: TextStyle(fontSize: 18.0, fontFamily: "JosefinBold" ),)
                      ],
                    ),
                  )
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Gramercy Tavern ", style: TextStyle(fontSize: 18.0, fontFamily: 'JosefinBold'),),
                ),
                Chip(
                  backgroundColor: Colors.redAccent,
                  label: Text('Italian', style: TextStyle(color: Colors.white),),
                ),

                Container(
                  width: 60.0,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
                        radius: 12,
                      ),
                      Positioned(
                        left: 10,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
                          radius: 12,
                        ),
                      ),

                      Positioned(
                        left: 20,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
                          radius: 12,
                        ),
                      ),

                      Positioned(
                        left: 30,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
                          radius: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                Icon(Icons.more_vert_rounded)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
              child: Text("42 E 20th St New York 23 USA", style: TextStyle(fontFamily: 'JosefinRegular', color: Colors.grey),),
            ),

          ],
        ),
      ),
    );
  }
}
