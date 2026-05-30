import 'package:edu_app/widgets/subject_wise_analysis_widgets/stat_tile.dart';
import 'package:edu_app/models/subject_analysis_models/subject_analysis_models.dart';
import 'package:flutter/material.dart';

class SubjectAnalysisCard extends StatelessWidget {
  final SubjectAnalysisModels data;

  const SubjectAnalysisCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final accuracy = data.accuracy;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Theme.of(context).dividerColor, width: 1.5),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.subject,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  ),
                  Text(
                    data.session,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodySmall?.color,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "${accuracy.toStringAsFixed(0)}%",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  ),
                  Text(
                    "ACCURACY",
                    style: TextStyle(
                      fontSize: 10,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: StatTile(
                  icon: Icons.check_circle_outline,
                  color: Colors.green,
                  value: data.correct,
                  label: "Correct",
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: StatTile(
                  icon: Icons.cancel_outlined,
                  color: Colors.red,
                  value: data.incorrect,
                  label: "Incorrect",
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: StatTile(
                  icon: Icons.pause_circle_outline,
                  color: Colors.orange,
                  value: data.skipped,
                  label: "Skipped",
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // ClipRRect(
          //   borderRadius: BorderRadius.circular(10),
          //   child: LinearProgressIndicator(value: accuracy / 100, minHeight: 8),
          // ),
        ],
      ),
    );
  }
}
