import 'package:edu_app/data/detailed_analysis_data.dart';
import 'package:edu_app/widgets/bottom_navbar.dart';
import 'package:edu_app/widgets/detailed_analysis_widgets.dart/growth_path_card.dart';
import 'package:edu_app/widgets/detailed_analysis_widgets.dart/performance_break_down.dart';
import 'package:edu_app/widgets/detailed_analysis_widgets.dart/recomended_focus_card.dart';
import 'package:edu_app/widgets/detailed_analysis_widgets.dart/total_score_card.dart';
import 'package:flutter/material.dart';

class DetailedAnalysis extends StatefulWidget {
  const DetailedAnalysis({super.key});

  @override
  State<DetailedAnalysis> createState() => _DetailedAnalysisState();
}

class _DetailedAnalysisState extends State<DetailedAnalysis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    const SizedBox(width: 70),
                    Text(
                      "Detailed Analysis",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TotalScoreCard(score: totalScore),
                const SizedBox(height: 26),
                PerformanceBreakDown(data: performanceBreakdown),
                const SizedBox(height: 16),
                GrowthPathCard(data: growthPath),
                const SizedBox(height: 16),
                RecomendedFocusCard(items: recommendedFocusList),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
