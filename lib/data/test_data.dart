// data/course_data.dart

import 'package:edu_app/models/test_models.dart/course_card_models.dart';
import 'package:edu_app/models/test_models.dart/mock_test_models.dart';
import 'package:flutter/material.dart';

final List<CourseCardModels> courses = [
  CourseCardModels(
    title: "IOE ",
    description: "Prepare for IOE Entrance \nwith full-length mock tests.",
    mainIcon: Icons.school,
    mockTests: 100,
    students: "10K+",
    averageScore: 86.65,
  ),

  CourseCardModels(
    title: "CEE",
    description: "Complete preparation for \nCEE with chapter-wise mock tests.",
    mainIcon: Icons.edit_document,
    mockTests: 75,
    students: "10K+",
    averageScore: 86.65,
  ),

  CourseCardModels(
    title: "IOST ",
    description: "Practice IOST entrance mock tests \nand improve performance.",
    mainIcon: Icons.science,
    mockTests: 80,
    students: "10K+",
    averageScore: 86.65,
  ),
];

final List<MockTestModel> mockTests = [
  MockTestModel(
    title: "Chemistry Full Mock Tests #3",
    questions: 100,
    duration: "1.5 hours",
    buttonText: "Start Again",
    icon: Icons.computer,
  ),

  MockTestModel(
    title: "Computer Full Mock Tests #3",
    questions: 100,
    duration: "1.5 hours",
    buttonText: "Start Again",
    icon: Icons.computer,
  ),

  MockTestModel(
    title: "Physics Full Mock Tests #5",
    questions: 120,
    duration: "2 hours",
    buttonText: "Continue",
    icon: Icons.science_outlined,
    startedDate: "Started on 3 May 2026",
  ),
];
