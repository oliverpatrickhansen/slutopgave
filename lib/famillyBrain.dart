// ignore_for_file: file_names

import 'package:slutopgave/addMember.dart';
import 'package:slutopgave/familly.dart';

class FamillyBrain {
  int _listItemNumber = 0;

  final List<Familly> _famillyBank = [];

  void addFamillyMember(String famillyMemberType, String famillyMemberName) {
    return _famillyBank.add(Familly(famillyMemberType, famillyMemberName));
  }

  String getFamillyMemberName() {
    if (_famillyBank.isEmpty) {
      return 'Here comes the names';
    } else {
      return _famillyBank[0].famillyMemberName;
    }
  }

  String getFamillyMemberType() {
    _listItemNumber = _famillyBank.length - 1;
    if (_famillyBank.isEmpty) {
      return 'Here comes the names';
    } else {
      return _famillyBank[0].famillyMemberType;
      //return _famillyBank[_listItemNumber].famillyMemberType;
    }
  }

  bool buttonShouldBeVisible() {
    if (_famillyBank.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  int returnListLength(){
    return _famillyBank.length-1;
  }
}
