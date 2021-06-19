import 'package:flutter/material.dart';

class TopInformation extends StatefulWidget {
  @override
  _TopInformationState createState() => _TopInformationState();
}

class _TopInformationState extends State<TopInformation> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "My Profile",
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'JosefinRegular',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                height: 100.0,
                width: 100.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80.0),
                child: FadeInImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGdsYXNzZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'),
                  placeholder: AssetImage('assets/images/loading.gif'),
                ),
              ),
              ),
            ),

            Text(
              "John Williams",
              style: TextStyle(
                  fontFamily: 'JosefinBold',
                  color:  Color(0xff5563FF),
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0
              ),),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "john.williams@gmail.com",
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey
                ),),
            )
          ],
        ),
      ),
    );
  }
}
