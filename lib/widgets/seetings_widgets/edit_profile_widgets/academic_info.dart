import 'package:flutter/material.dart';

class AcademicInfo extends StatefulWidget {
  const AcademicInfo({super.key});

  @override
  State<AcademicInfo> createState() => _AcademicInfoState();
}

class _AcademicInfoState extends State<AcademicInfo> {
  final List<String> levels = ["SEE", "High School", "Bachelor", "Master"];

  final List<String> courses = [
    "IOE Entrance Preparation",
    "IOST Entrance Preparation",
    "CEE Entrance Preparation",
  ];

  String? selectedLevel = "Bachelor";
  String? selectedCourse = "IOE Entrance Preparation";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Theme.of(context).dividerColor),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Level",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),

          const SizedBox(height: 10),

          DropdownButtonFormField<String>(
            value: selectedLevel,

            decoration: _inputDecoration(context),

            items: levels.map((level) {
              return DropdownMenuItem(value: level, child: Text(level));
            }).toList(),

            onChanged: (value) {
              setState(() {
                selectedLevel = value;
              });
            },
          ),

          const SizedBox(height: 20),

          Text(
            "Target Course",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),

          const SizedBox(height: 10),

          DropdownButtonFormField<String>(
            value: selectedCourse,

            decoration: _inputDecoration(context),

            items: courses.map((course) {
              return DropdownMenuItem(value: course, child: Text(course));
            }).toList(),

            onChanged: (value) {
              setState(() {
                selectedCourse = value;
              });
            },
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration(BuildContext context) {
    return InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Theme.of(context).dividerColor),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2),
      ),
    );
  }
}
