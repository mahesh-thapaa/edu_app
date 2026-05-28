import 'package:flutter/material.dart';

class SelectedFrameCard extends StatelessWidget {
  const SelectedFrameCard({
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Selected Entrance',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: theme.textTheme.bodyLarge?.color,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: theme.dividerColor, width: 1.2),
            boxShadow: [
              BoxShadow(
                color: theme.primaryColor.withValues(alpha: 0.08),
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: theme.textTheme.bodyLarge?.color,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        color:
                            theme.textTheme.bodySmall?.color ?? theme.hintColor,
                      ),
                    ),
                  ],
                ),
              ),
              // TextButton(
              //   onPressed: onChange ?? () {},
              //   style: TextButton.styleFrom(
              //     foregroundColor: theme.primaryColor,
              //     padding: EdgeInsets.zero,
              //     minimumSize: const Size(0, 0),
              //     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              //   ),
              //   child: const Text('Change'),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
