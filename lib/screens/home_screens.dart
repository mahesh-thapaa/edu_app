// import 'package:edu_app/models/recent_mock_test_models.dart';
import 'package:edu_app/models/home_models/resume_models.dart';
import 'package:edu_app/widgets/bottom_navbar.dart';
import 'package:edu_app/widgets/home_widgets/catagories.dart';
import 'package:edu_app/widgets/home_widgets/recent_mock_test.dart';
import 'package:edu_app/widgets/home_widgets/resume_card.dart';
import 'package:edu_app/models/home_models/recent_mock_test_models.dart';
import 'package:edu_app/widgets/home_widgets/top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final ResumeModels resume = ResumeModels(
      title: "Resume Last Mock",
      subtitle: "Physics Full Mock #5",
      progess: 0.5,
      attempted: 45,
      total: 100,
      remainingTime: "48 minutes ramaining",
    );
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
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FF),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    const Text(
                      "Your course",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF1D1D1D),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        print("View all courses tapped");
                      },
                      child: const Text(
                        "View All",
                        style: TextStyle(
                          color: Color(0xFF375DFB),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Catagories(),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ResumeCard(resume: resume),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Recent Mock Tests",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1D1D1D),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "View All",
                          style: TextStyle(
                            color: Color(0xFF375DFB),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ...recentMocks.map((mock) => RecentMockTest(mock: mock)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
