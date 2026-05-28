import 'package:flutter/material.dart';

class SelectedEntranceCard extends StatelessWidget {
  const SelectedEntranceCard({
    super.key,
    this.title = 'IOE Entrance',
    this.subtitle = 'Engineering Track • 2026 Exam',
    this.onChange,
  });

  final String title;
  final String subtitle;
  final VoidCallback? onChange;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.dividerColor, width: 1.2),
        boxShadow: [
          BoxShadow(
            color: theme.primaryColor.withOpacity(0.06),
            blurRadius: 8,
            offset: const Offset(-2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: theme.textTheme.bodyLarge?.color,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    color: theme.textTheme.bodySmall?.color,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: onChange ?? () {},
            child: Text('Change', style: TextStyle(color: theme.primaryColor)),
          ),
        ],
      ),
    );
  }
}
