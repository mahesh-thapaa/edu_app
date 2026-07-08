import 'package:flutter/material.dart';

class ResultCardModels {
  final String title;
  final String subtitle;
  final String date;
  final int score;
  final double percentage;
  final IconData icon;
  final String duration;
  ResultCardModels({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.duration,
    required this.score,
    required this.percentage,
    required this.icon,
  });
}
