import 'package:edu_app/data/subject_analysis_data.dart';
import 'package:edu_app/widgets/bottom_navbar.dart';
import 'package:edu_app/widgets/subject_wise_analysis_widgets/questions_analysis_card.dart';
import 'package:edu_app/widgets/subject_wise_analysis_widgets/subject_analysis_card.dart';
import 'package:edu_app/widgets/subject_wise_analysis_widgets/topic_performance_card.dart';
import 'package:flutter/material.dart';

class SubjectWiseAnalysis extends StatefulWidget {
  const SubjectWiseAnalysis({super.key});

  @override
  State<SubjectWiseAnalysis> createState() => _SubjectWiseAnalysisState();
}

class _SubjectWiseAnalysisState extends State<SubjectWiseAnalysis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                    const SizedBox(width: 100),
                    Text(
                      "Physics Analysis",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SubjectAnalysisCard(data: physics),
                const SizedBox(height: 20),
                TopicPerformanceCard(topics: topics),
                const SizedBox(height: 20),
                QuestionsAnalysisCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
