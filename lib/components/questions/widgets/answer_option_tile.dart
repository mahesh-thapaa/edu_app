import 'package:flutter/material.dart';

class QuestionOptionTile extends StatelessWidget {
  final String label;
  final String option;
  final bool selected;
  final VoidCallback onTap;

  const QuestionOptionTile({
    super.key,
    required this.label,
    required this.option,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color accentColor = Theme.of(context).primaryColor;
    final Color borderColor = selected
        ? accentColor.withValues(alpha: 0.3)
        : Theme.of(context).dividerColor;
    final Color backgroundColor = selected
        ? accentColor.withValues(alpha: 0.16)
        : Theme.of(context).cardColor;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor, width: 1.2),
        ),
        child: Row(
          children: [
            Container(
              height: 34,
              width: 34,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selected ? accentColor : Colors.transparent,
                border: Border.all(color: accentColor, width: 1.4),
              ),
              alignment: Alignment.center,
              child: Text(
                label,
                style: TextStyle(
                  color: selected ? Colors.white : accentColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                option,
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            if (selected)
              Icon(Icons.check_circle, color: accentColor, size: 28),
          ],
        ),
      ),
    );
  }
}
