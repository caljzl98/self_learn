import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(hexCo lor('#0A0625')),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              Text(
                'Calvin Lim',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Color(hexColor('#e9ddde')),
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Source Sans Pro',
                  color: Color(hexColor('#9B164C')),
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Color(hexColor('#e9ddde')),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Color(hexColor('#7E1447')),
                  ),
                  title: Text(
                    '+1 123 456 7890',
                    style: TextStyle(
                      color: Color(hexColor('#9B164C')),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Color(hexColor('#e9ddde')),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Color(hexColor('#7E1447')),
                  ),
                  title: Text(
                    'zxcvin98@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(hexColor('#9B164C')),
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

hexColor(String colorhexcode) {
  String colornew = '0xff' + colorhexcode;
  colornew = colornew.replaceAll('#', '');
  int colorint = int.parse(colornew);
  return colorint;
}

// Lessons for margin and padding, rows and columns
//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.teal,
//        body: SafeArea(
//          child: Column(
//            children: [
//              Container(
//                height: 100.0,
//                width: 100.0,
////            margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
////            margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
////            margin: EdgeInsets.only(left: 30.0),
////            padding: EdgeInsets.all(20.0),
//                color: Colors.white,
//                child: Text('Container 1'),
//              ),
//              Container(
//                width: 100.0,
//                height: 100.0,
//                color: Colors.blue,
//                child: Text('Container 2'),
//              ),
//              Container(
//                width: 100.0,
//                height: 100.0,
//                color: Colors.red,
//                child: Text('Container 3'),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
