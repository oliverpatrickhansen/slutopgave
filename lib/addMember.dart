// ignore_for_file: file_names, prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:slutopgave/familly.dart';

// FamillyBrain famillyBrain = FamillyBrain();

class AddMember extends StatefulWidget {
  @override
  _AddMemberState createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {
  String val = "";
  TextEditingController nameController = new TextEditingController();



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
              'Write the name of your.....',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            ListTile(
              title: Text('Mother'),
              leading: Radio(
                value: 'Mother',
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Father'),
              leading: Radio(
                value: 'Father',
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Cat'),
              leading: Radio(
                value: 'Cat',
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Dog'),
              leading: Radio(
                value: 'Dog',
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value.toString();
                  });
                },
              ),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a name',
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () {
                  Familly familly = Familly(val,nameController.text);
                  
                  Navigator.pop(context, familly);
              },
              child: Text(
                'SEND',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
