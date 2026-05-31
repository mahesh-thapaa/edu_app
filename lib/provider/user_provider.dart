import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String _fullName = "";
  String _email = "";
  DateTime _joinedDate = DateTime.now();

  String get fullName => _fullName;
  String get email => _email;
  DateTime get joinedDate => _joinedDate;

  void updateName(String name) {
    _fullName = name;
    notifyListeners();
  }

  void updateEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void updateJoinedDate(DateTime date) {
    _joinedDate = date;
    notifyListeners();
  }
}
