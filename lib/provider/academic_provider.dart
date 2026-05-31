import 'package:flutter/material.dart';

class AcademicProvider extends ChangeNotifier {
  String _level = "Bachelor";
  String _targetCourse = "IOE Entrance Preparation";

  String get level => _level;
  String get targetCourse => _targetCourse;

  void updateLevel(String level) {
    _level = level;
    notifyListeners();
  }

  void updateTargetCourse(String course) {
    _targetCourse = course;
    notifyListeners();
  }
}
