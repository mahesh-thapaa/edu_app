import 'package:edu_app/data/result_data.dart';
import 'package:edu_app/theme/app_colors.dart';
import 'package:edu_app/widgets/bottom_navbar.dart';
import 'package:edu_app/widgets/home_widgets/top_bar.dart';
import 'package:edu_app/widgets/result_widgets/result_card.dart';
import 'package:edu_app/widgets/result_widgets/score_card.dart';
import 'package:edu_app/widgets/result_widgets/subject_performance_card.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: const BottomNavBar(currentIndex: 2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBar(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text(
                      "Test Results",
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    ElevatedButton.icon(
                      onPressed: () {
                        print("Download Pressed");
                      },

                      icon: Icon(
                        Icons.analytics,
                        size: 16,
                        color: AppColors.backgroundlight,
                      ),

                      label: Text(
                        "Analytics",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.backgroundlight,
                        ),
                      ),

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),

                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton.icon(
                      onPressed: () {
                        print("Download Pressed");
                      },

                      icon: Icon(
                        Icons.download,
                        size: 16,
                        color: AppColors.backgroundlight,
                      ),

                      label: Text(
                        "Download",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.backgroundlight,
                        ),
                      ),

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),

                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ResultCard(result: result),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Theme.of(context).dividerColor,
                      width: 2,
                    ),
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: ScoreCard(scorecard: resultList[0])),
                        const VerticalDivider(
                          width: 16,
                          thickness: 1,
                          color: Color(0xFFD9DEFF),
                        ),
                        Expanded(child: ScoreCard(scorecard: resultList[1])),
                        const VerticalDivider(
                          width: 16,
                          thickness: 1,
                          color: Color(0xFFD9DEFF),
                        ),
                        Expanded(child: ScoreCard(scorecard: resultList[2])),
                        const VerticalDivider(
                          width: 16,
                          thickness: 1,
                          color: Color(0xFFD9DEFF),
                        ),
                        Expanded(child: ScoreCard(scorecard: resultList[3])),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text(
                      "Subject Performance",
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        print("View by subject Pressed");
                      },
                      child: Text(
                        "View by Subject",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SubjectPerformanceCard(),
            ],
          ),
        ),

        // const SizedBox(height: 20),
      ),
    );
  }
}
