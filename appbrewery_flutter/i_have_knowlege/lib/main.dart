import 'package:flutter/material.dart';

hexColor(String colorhexcode) {
  String colornew = '0xff' + colorhexcode;
  colornew = colornew.replaceAll('#', '');
  int colorint = int.parse(colornew);
  return colorint;
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(hexColor('#3C2D70')),
        appBar: AppBar(
          title: Center(
            child: Text(
              'I am a UW Student',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(
                  hexColor('#3C2D70'),
                ),
              ),
            ),
          ),
          backgroundColor: Color(hexColor('#D5CA94')),
        ),
        body: Center(
          child: Image(image: AssetImage('images/UW_Husky2.png')),
        ),
      ),
    ),
  );
}
