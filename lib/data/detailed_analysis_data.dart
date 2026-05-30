import 'package:edu_app/models/detailed_analysis_models.dart/growth_path_models.dart';
import 'package:edu_app/models/detailed_analysis_models.dart/performance_breakdown_models.dart';
import 'package:edu_app/models/detailed_analysis_models.dart/recommended_focus_models.dart';
import 'package:edu_app/models/detailed_analysis_models.dart/total_score_models.dart';
import 'package:flutter/material.dart';

final TotalScoreModels totalScore = TotalScoreModels(
  scoredMarks: 92,
  totalMarks: 120,
  performanceText: 'Excellent Performance!!',
  improvementText: '+12% Improvement From Last Test !!',
);

final PerformanceBreakdownModels performanceBreakdown =
    PerformanceBreakdownModels(
      accuracy: 84.2,
      completion: 96,
      avgTimeSeconds: 42,
      previousImprovement: 64,
      currentImprovement: 76,
      bestSubject: 'Physics',
      bestSubjectPercent: 81,
      needsWorkSubject: 'Chemistry',
      needsWorkPercent: 55,
    );

final GrowthPathModels growthPath = GrowthPathModels(
  lastTestPercent: 64,
  currentPercent: 76,
  improvementPercent: 12,
  insight: "You're improving faster than 85% of your peers!",
);

final List<RecommendedFocusModels> recommendedFocusList = [
  const RecommendedFocusModels(
    subject: 'Chemistry',
    focusText: 'Focus on Organic Reaction Mechanisms',
    icon: Icons.science_outlined,
    iconColor: Color(0xFF2563EB),
    iconBackgroundColor: Color(0xFFE9F1FF),
  ),
  const RecommendedFocusModels(
    subject: 'Calculus',
    focusText: 'Review Integration by Parts',
    icon: Icons.functions,
    iconColor: Color(0xFF7C3AED),
    iconBackgroundColor: Color(0xFFF2EAFE),
  ),
];
