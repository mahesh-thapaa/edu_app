import 'package:edu_app/models/result_models/result_card_models.dart';
import 'package:edu_app/models/result_models/score_card_models.dart';
import 'package:edu_app/models/result_models/subject_performance_models.dart';
import 'package:flutter/material.dart';

final ResultCardModels result = ResultCardModels(
  title: "Congratulations!!",
  subtitle: "IOE Entrance-Full Mock Test #1",
  date: "1 May 2026, 12:30 PM",
  duration: "2 hours",
  score: 92,
  percentage: 76.66,
  icon: Icons.emoji_events,
);

final List<ScoreCardModels> resultList = [
  ScoreCardModels(
    title: "Correct",
    value: "92",
    subtitle: "76.66%",
    icon: Icons.check,
    color: Colors.green,
  ),

  ScoreCardModels(
    title: "Incorrect",
    value: "21",
    subtitle: "17.50%",
    icon: Icons.close,
    color: Colors.red,
  ),

  ScoreCardModels(
    title: "Unattempted",
    value: "5",
    subtitle: "4.17%",
    icon: Icons.help_outline,
    color: Colors.amber,
  ),

  ScoreCardModels(
    title: "Time Taken",
    value: "01:42:36",
    subtitle: "of 02:00:00",
    icon: Icons.access_time,
    color: Colors.blue,
  ),
];

final List<SubjectPerformanceModels> subjectPerformanceList = [
  SubjectPerformanceModels(
    subjectName: "Physics",
    totalQuestions: "40 questions",
    progress: 0.73,
    percentage: "73.54%",
    icon: Icons.science_outlined,
  ),

  SubjectPerformanceModels(
    subjectName: "Chemistry",
    totalQuestions: "30 questions",
    progress: 0.83,
    percentage: "83.54%",
    icon: Icons.bubble_chart_outlined,
  ),

  SubjectPerformanceModels(
    subjectName: "English",
    totalQuestions: "35 questions",
    progress: 0.98,
    percentage: "98.09%",
    icon: Icons.language,
  ),

  SubjectPerformanceModels(
    subjectName: "Maths",
    totalQuestions: "45 questions",
    progress: 0.90,
    percentage: "90.17%",
    icon: Icons.calculate_outlined,
  ),
];
