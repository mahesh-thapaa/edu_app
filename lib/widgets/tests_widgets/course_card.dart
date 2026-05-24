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
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Theme.of(context).dividerColor, width: 2),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// TITLE
          Text(
            course.title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),

          const SizedBox(height: 8),

          /// DESCRIPTION
          Text(
            course.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Theme.of(context).textTheme.bodyLarge?.color,
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
                          Icon(
                            Icons.play_circle_fill,
                            size: 18,
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                          ),

                          const SizedBox(height: 6),

                          Text(
                            "${course.mockTests}",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.color,
                            ),
                          ),

                          const SizedBox(height: 2),

                          Text(
                            "Mock Tests",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                              color: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.color,
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// STUDENTS
                    Expanded(
                      child: Column(
                        children: [
                          Icon(
                            Icons.people,
                            size: 18,
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                          ),

                          const SizedBox(height: 6),

                          Text(
                            course.students,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.color,
                            ),
                          ),

                          const SizedBox(height: 2),

                          Text(
                            "Students",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                              color: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.color,
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// AVG SCORE
                    Expanded(
                      child: Column(
                        children: [
                          Icon(
                            Icons.bar_chart,
                            size: 18,
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                          ),

                          const SizedBox(height: 6),

                          Text(
                            "${course.averageScore}%",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.color,
                            ),
                          ),

                          const SizedBox(height: 2),

                          Text(
                            "Avg Score",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                              color: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.color,
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
                  backgroundColor: Theme.of(context).primaryColor,
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
