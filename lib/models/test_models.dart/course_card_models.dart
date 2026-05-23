import 'package:flutter/material.dart';

class CourseCardModels {
  final String title;
  final String description;
  final String students;
  final double averageScore;
  final IconData mainIcon;
  final int mockTests;
  CourseCardModels({
    required this.title,
    required this.description,
    required this.students,
    required this.averageScore,
    required this.mainIcon,
    required this.mockTests,
  });
}
