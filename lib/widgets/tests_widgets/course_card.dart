// widgets/course_card.dart

import 'package:edu_app/models/test_models.dart/course_card_models.dart';
// import 'package:edu_app/models/test_models/course_card_models.dart';
// import 'package:edu_app/data/test_data.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final CourseCardModels course;
  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Color(0xFFF9F9FF),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Color(0xFFD7DDF4)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course.title,
                      // maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      course.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF6B7280),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.play_circle_fill, size: 16, color: Color(0xFF131B2E)),
              SizedBox(width: 4),
              Text(
                "${course.mockTests} \nMock Tests",
                style: TextStyle(fontSize: 13, color: Color(0xFF131B2E)),
              ),
              SizedBox(width: 16),
              Icon(Icons.people, size: 16, color: Color(0xFF131B2E)),
              SizedBox(width: 4),
              Text(
                "${course.students} \nStudents",
                style: TextStyle(fontSize: 13, color: Color(0xFF131B2E)),
              ),
              SizedBox(width: 16),
              Icon(Icons.bar_chart, size: 16, color: Color(0xFF131B2E)),
              SizedBox(width: 4),
              Text(
                " ${course.averageScore}% \nAvg. Score",
                style: TextStyle(fontSize: 13, color: Color(0xFF131B2E)),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.arrow_forward, size: 20, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF375DFB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
