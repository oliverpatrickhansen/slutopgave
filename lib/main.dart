// ignore_for_file: prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:slutopgave/addMember.dart';
import 'package:slutopgave/pickColor.dart';

void main() => runApp(SlutOpgave());

class SlutOpgave extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FrontPage(),
    );
  }
}

class FrontPage extends StatefulWidget {
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  List<String> nameList = [];

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
              "Get Ones Name and Color",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddMember(),
                  ),
                );
              },
              child: Text(
                'GET ONES NAME',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Row(
              children: [
                Visibility(
                  visible: !famillyBrain.buttonShouldBeVisible(),
                  child: Text(
                    famillyBrain.getFamillyMemberType(),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Visibility(
                  visible: famillyBrain.buttonShouldBeVisible(),
                  child: Text(
                    famillyBrain.getFamillyMemberType() + ' : ' + famillyBrain.getFamillyMemberName(),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PickColor(),
                  ),
                );
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
