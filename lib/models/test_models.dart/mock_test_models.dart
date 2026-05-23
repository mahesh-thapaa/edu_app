// models/mock_test_model.dart

import 'package:flutter/material.dart';

class MockTestModel {
  final String title;
  final int questions;
  final String duration;
  final String buttonText;
  final IconData icon;
  final String? startedDate;

  MockTestModel({
    required this.title,
    required this.questions,
    required this.duration,
    required this.buttonText,
    required this.icon,
    this.startedDate,
  });
}
