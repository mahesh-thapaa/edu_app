import 'package:flutter/material.dart';

class RecentMockTestModels {
  final String subject;
  final int questions;
  final String duration;
  final String difficulty;
  final String attemptDate;
  final int score;
  final IconData icon;
  const RecentMockTestModels({
    required this.subject,
    required this.questions,
    required this.duration,
    required this.difficulty,
    required this.attemptDate,
    required this.score,
    required this.icon,
  });
}
