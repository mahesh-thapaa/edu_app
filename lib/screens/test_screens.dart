import 'package:edu_app/data/test_data.dart';
import 'package:edu_app/theme/app_colors.dart';
import 'package:edu_app/widgets/bottom_navbar.dart';
// import 'package:edu_app/widgets/home_widgets/top_bar.dart';
import 'package:edu_app/widgets/tests_widgets/course_card.dart';
import 'package:edu_app/widgets/tests_widgets/mock_test_card.dart';
import 'package:flutter/material.dart';

class TestScreens extends StatelessWidget {
  const TestScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundlight,
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const TopBar(),

              // const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text(
                      'Tests',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.htextLight,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),

                    IconButton(
                      onPressed: () {
                        print("Search Icon Pressed");
                      },
                      icon: const Icon(Icons.search),
                    ),

                    // IconButton(
                    //   onPressed: () {},
                    //   icon: const Icon(Icons.filter_list_rounded),
                    // ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Choose your preferred\nentrance preparation category.',
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.35,
                    color: AppColors.iDark,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: List.generate(
                    courses.length,
                    (index) => CourseCard(course: courses[index]),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Continue Your Last Activity",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.htextLight,
                      ),
                    ),
                    Spacer(),

                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(
                          color: AppColors.buttonColorLight,
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
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: MockTestCard(mockTests: mockTests),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
