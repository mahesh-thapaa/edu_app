import 'package:flutter/material.dart';

class SubjectPerformanceModels {
  final String subjectName;
  final String totalQuestions;
  final double progress;
  final String percentage;
  final IconData icon;
  SubjectPerformanceModels({
    required this.subjectName,
    required this.totalQuestions,
    required this.progress,
    required this.percentage,
    required this.icon,
  });
}
