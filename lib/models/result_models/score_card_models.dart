import 'package:flutter/material.dart';

class ScoreCardModels {
  final String title;
  final String value;
  final String subtitle;
  final IconData icon;
  final Color color;
  ScoreCardModels({
    required this.title,
    required this.subtitle,
    required this.value,
    required this.icon,
    required this.color,
  });
}
