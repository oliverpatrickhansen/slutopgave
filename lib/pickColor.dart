// ignore_for_file: file_names, prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:slutopgave/addMember.dart';

class PickColor extends StatefulWidget {
  @override
  _PickColorState createState() => _PickColorState();
}

class _PickColorState extends State<PickColor> {
  Color color = Colors.green;

  String? value1 = "00";
  String? value2 = "00";
  String? value3 = "00";


  final items = ['00', '10', '20', '30', '40', 'A0', 'B0', 'C0', 'FF'];

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SlutOpgavenHentnavnOgFarve'),
        backgroundColor: Colors.purple.shade800,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              's Color',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: color),
                ),
              ),
            ),
            Row(
              children: [
                DropdownButton<String>(
                  value: value1,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => value1 = value),
                ),
                DropdownButton<String>(
                  value: value2,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => value2 = value),
                ),
                DropdownButton<String>(
                  value: value3,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => value3 = value),
                ),
              ],
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () {
               int hexVal = int.parse('0xFF') + int.parse(value1!+value2!+value3!,radix: 16);
               color = Color(hexVal);
               Navigator.pop(context, color);
              },
              child: Text(
                'GET ONES COLOR',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}