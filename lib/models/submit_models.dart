import 'package:flutter/material.dart';

class SubmitModels {
  final String title;
  final int count;
  final IconData icon;
  final Color iconColor;
  final Color iconBackgroundColor;
  final Color countColor;
  final SummaryType type;
  SubmitModels({
    required this.title,
    required this.count,
    required this.icon,
    required this.iconColor,
    required this.iconBackgroundColor,
    required this.countColor,
    required this.type,
  });
}

enum SummaryType {
  answered,
  unanswered,
  reviewLater,
  correct,
  incorrect,
  notAttempted,
}
