import 'package:flutter/material.dart';

class StudyRemainderCard extends StatefulWidget {
  const StudyRemainderCard({super.key});

  @override
  State<StudyRemainderCard> createState() => _StudyRemainderCardState();
}

class _StudyRemainderCardState extends State<StudyRemainderCard> {
  bool enabled = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.dividerColor, width: 1.2),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Study Reminder',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: theme.textTheme.bodyLarge?.color,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Get notified when it's time to study",
                  style: TextStyle(
                    fontSize: 13,
                    color: theme.textTheme.bodySmall?.color ?? theme.hintColor,
                  ),
                ),
              ],
            ),
          ),
          Switch.adaptive(
            value: enabled,
            onChanged: (v) => setState(() => enabled = v),
            activeColor: theme.primaryColor,
            activeTrackColor: theme.primaryColor.withValues(alpha: 0.3),
            inactiveThumbColor: theme.disabledColor,
            inactiveTrackColor: theme.dividerColor.withValues(alpha: 0.2),
          ),
        ],
      ),
    );
  }
}
