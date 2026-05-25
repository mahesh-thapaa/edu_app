import 'package:edu_app/models/home_models/recent_mock_test_models.dart';
import 'package:edu_app/models/home_models/resume_models.dart';
import 'package:flutter/material.dart';

final List<RecentMockTestModels> recentMocks = [
  RecentMockTestModels(
    subject: "Physics Full Mock Tests #5",
    questions: 120,
    duration: "2 hours",
    difficulty: "Medium",
    score: 70,
    attemptDate: "Attempted on 1 May 2026",
    icon: Icons.science,
  ),

  RecentMockTestModels(
    subject: "Maths Full Mock Tests #5",
    questions: 120,
    duration: "2 hours",
    difficulty: "Medium",
    score: 60,
    attemptDate: "Attempted on 1 May 2026",
    icon: Icons.architecture,
  ),

  RecentMockTestModels(
    subject: "Chemistry Full Mock Tests #5",
    questions: 100,
    duration: "2 hours",
    difficulty: "Medium",
    score: 60,
    attemptDate: "Attempted on 1 May 2026",
    icon: Icons.blur_on,
  ),
];

final ResumeModels resume = ResumeModels(
  title: "Resume Last Mock",
  subtitle: "Physics Full Mock #5",
  progess: 0.5,
  attempted: 45,
  total: 100,
  remainingTime: "48 minutes ramaining",
);
