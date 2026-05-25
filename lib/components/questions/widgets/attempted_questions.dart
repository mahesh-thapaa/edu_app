import 'package:edu_app/models/component_models/component_models.dart';
import 'package:flutter/material.dart';

class AttemptedQuestions extends StatelessWidget {
  final ComponentModels summary;

  const AttemptedQuestions({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    final Color accentColor = Theme.of(context).primaryColor;
    final Color borderColor = Theme.of(
      context,
    ).dividerColor.withValues(alpha: 0.35);
    final Color textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black87;

    Widget buildItem({
      required String prefix,
      required String value,
      required String suffix,
    }) {
      return Expanded(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
              color: textColor,
              fontSize: 12.5,
              fontWeight: FontWeight.w500,
            ),
            children: [
              TextSpan(text: prefix),
              TextSpan(
                text: value,
                style: TextStyle(
                  color: accentColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(text: suffix),
            ],
          ),
        ),
      );
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Theme.of(context).dividerColor, width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          buildItem(
            prefix: 'Question ',
            value: summary.questionNumber.toString(),
            suffix: ' of ${summary.totalQuestions}',
          ),
          Container(width: 1, height: 18, color: borderColor),
          buildItem(
            prefix: 'Answered : ',
            value: summary.answeredCount.toString(),
            suffix: '',
          ),
          Container(width: 1, height: 18, color: borderColor),
          buildItem(
            prefix: 'Review Queue: ',
            value: summary.reviewQueueCount.toString(),
            suffix: '',
          ),
        ],
      ),
    );
  }
}
