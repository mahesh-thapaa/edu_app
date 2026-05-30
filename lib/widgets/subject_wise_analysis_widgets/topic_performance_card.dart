import 'package:edu_app/models/subject_analysis_models/topic_models.dart';
import 'package:flutter/material.dart';

class TopicPerformanceCard extends StatelessWidget {
  final List<TopicModels> topics;

  const TopicPerformanceCard({
    super.key,
    required this.topics,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Topic Performance",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: theme.textTheme.bodyLarge?.color,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: theme.dividerColor,
              width: 1.5,
            ),
          ),
          child: Column(
            children: List.generate(
              topics.length,
              (index) {
                final topic = topics[index];

                return Padding(
                  padding: EdgeInsets.only(
                    bottom: index == topics.length - 1 ? 0 : 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              topic.topicName,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color:
                                    theme.textTheme.bodyLarge?.color,
                              ),
                            ),
                          ),
                          Text(
                            "${topic.percentage.toStringAsFixed(topic.percentage % 1 == 0 ? 0 : 2)}%",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: theme.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: LinearProgressIndicator(
                          value: topic.percentage / 100,
                          minHeight: 8,
                          backgroundColor:
                              theme.dividerColor.withValues(alpha: 0.3),
                          valueColor:
                              AlwaysStoppedAnimation<Color>(
                            theme.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}