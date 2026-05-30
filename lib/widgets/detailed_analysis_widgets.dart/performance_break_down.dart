import 'package:edu_app/models/detailed_analysis_models.dart/performance_breakdown_models.dart';
import 'package:flutter/material.dart';

class PerformanceBreakDown extends StatelessWidget {
  final PerformanceBreakdownModels data;

  const PerformanceBreakDown({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Performance Breakdown',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: theme.textTheme.bodyLarge?.color,
          ),
        ),
        const SizedBox(height: 14),
        GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 14,
          crossAxisSpacing: 14,
          childAspectRatio: 1.5,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            _MetricTile(
              icon: Icons.adjust_rounded,
              iconColor: const Color(0xFF2563EB),
              title: 'ACCURACY',
              value: '${data.accuracy.toStringAsFixed(1)}%',
            ),
            _MetricTile(
              icon: Icons.check_circle_outline_rounded,
              iconColor: const Color(0xFF059669),
              title: 'COMPLETION',
              value: '${data.completion}%',
            ),
            _MetricTile(
              icon: Icons.timer_outlined,
              iconColor: const Color(0xFF7C3AED),
              title: 'AVG TIME',
              value: '${data.avgTimeSeconds}s',
            ),
            _MetricTile(
              icon: Icons.bar_chart_rounded,
              iconColor: const Color(0xFF2563EB),
              title: 'IMPROVEMENT',
              value:
                  '${data.previousImprovement}% -> ${data.currentImprovement}%',
            ),
          ],
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            Expanded(
              child: _SubjectTile(
                title: 'Best Subject',
                subtitle: '${data.bestSubject} (${data.bestSubjectPercent}%)',
                accentColor: const Color(0xFF3B82F6),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: _SubjectTile(
                title: 'Needs Work',
                subtitle:
                    '${data.needsWorkSubject} (${data.needsWorkPercent}%)',
                accentColor: const Color(0xFFEF4444),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _MetricTile extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String value;

  const _MetricTile({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: theme.dividerColor, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: iconColor, size: 24),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
              color: theme.textTheme.bodySmall?.color,
            ),
          ),
          const SizedBox(height: 4),
          Align(
            alignment: Alignment.centerLeft,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: theme.textTheme.bodyLarge?.color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SubjectTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color accentColor;

  const _SubjectTile({
    required this.title,
    required this.subtitle,
    required this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: theme.dividerColor, width: 1.5),
        // boxShadow: [
        //   BoxShadow(
        //     color: accentColor.withValues(alpha: 0.3),
        //     blurRadius: 3,
        //     spreadRadius: 0.3,
        //     offset: const Offset(-2, 0),
        //   ),
        // ],
      ),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: theme.textTheme.bodyLarge?.color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: theme.textTheme.bodyLarge?.color,
            ),
          ),
        ],
      ),
    );
  }
}
