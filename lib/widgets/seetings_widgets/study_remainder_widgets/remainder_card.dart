import 'package:flutter/material.dart';

class RemainderCard extends StatefulWidget {
  const RemainderCard({super.key});

  @override
  State<RemainderCard> createState() => _RemainderCardState();
}

class _RemainderCardState extends State<RemainderCard> {
  TimeOfDay selected = const TimeOfDay(hour: 17, minute: 0); // 05:00 PM

  Future<void> _pickTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: selected,
      builder: (context, child) {
        final theme = Theme.of(context);
        return Theme(data: theme, child: child ?? const SizedBox());
      },
    );

    if (picked != null && picked != selected) {
      setState(() => selected = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final local = MaterialLocalizations.of(context);
    final formatted = local.formatTimeOfDay(
      selected,
      alwaysUse24HourFormat: false,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'REMINDER TIME',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: theme.textTheme.bodySmall?.color,
          ),
        ),
        const SizedBox(height: 8),

        InkWell(
          onTap: _pickTime,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            height: 50,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: theme.dividerColor, width: 1.2),
            ),
            child: Row(
              children: [
                Icon(Icons.access_time, color: theme.primaryColor, size: 20),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    formatted,
                    style: TextStyle(
                      fontSize: 16,
                      color: theme.textTheme.bodyLarge?.color,
                    ),
                  ),
                ),
                Icon(Icons.arrow_drop_down, color: theme.hintColor),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
