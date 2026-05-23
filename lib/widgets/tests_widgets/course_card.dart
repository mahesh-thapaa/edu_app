import 'package:edu_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:edu_app/models/test_models.dart/course_card_models.dart';

class CourseCard extends StatelessWidget {
  final CourseCardModels course;

  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.backgroundlight,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.bColor, width: 2),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withValues(alpha: 0.03),
        //     blurRadius: 10,
        //     offset: const Offset(0, 5),
        //   ),
        // ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// TITLE
          Text(
            course.title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: AppColors.htextLight,
            ),
          ),

          const SizedBox(height: 8),

          /// DESCRIPTION
          Text(
            course.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
              color: AppColors.iDark,
            ),
          ),

          const SizedBox(height: 22),

          /// BOTTOM SECTION
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              /// STATS
              Expanded(
                child: Row(
                  children: [
                    /// MOCK TESTS
                    Expanded(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.play_circle_fill,
                            size: 18,
                            color: AppColors.iDark,
                          ),

                          const SizedBox(height: 6),

                          Text(
                            "${course.mockTests}",
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: AppColors.iDark,
                            ),
                          ),

                          const SizedBox(height: 2),

                          const Text(
                            "Mock Tests",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                              color: AppColors.iDark,
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// STUDENTS
                    Expanded(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.people,
                            size: 18,
                            color: AppColors.iDark,
                          ),

                          const SizedBox(height: 6),

                          Text(
                            "${course.students}",
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: AppColors.iDark,
                            ),
                          ),

                          const SizedBox(height: 2),

                          const Text(
                            "Students",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                              color: AppColors.iDark,
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// AVG SCORE
                    Expanded(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.bar_chart,
                            size: 18,
                            color: AppColors.iDark,
                          ),

                          const SizedBox(height: 6),

                          Text(
                            "${course.averageScore}%",
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: AppColors.iDark,
                            ),
                          ),

                          const SizedBox(height: 2),

                          const Text(
                            "Avg Score",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                              color: AppColors.iDark,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 16),

              /// BUTTON
              ElevatedButton(
                onPressed: () {},

                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.buttonColorLight,
                  elevation: 0,
                  padding: const EdgeInsets.all(18),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),

                child: const Icon(
                  Icons.arrow_forward,
                  color: AppColors.backgroundlight,
                  size: 22,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
