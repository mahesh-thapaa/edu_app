import 'package:flutter/material.dart';

class TargetExamCard extends StatelessWidget {
  const TargetExamCard({super.key, this.onSelected, this.selectedIndex = 0});

  final ValueChanged<int>? onSelected;
  final int selectedIndex;

  static const _items = <_TargetExamItem>[
    _TargetExamItem(title: 'IOE Entrance'),
    _TargetExamItem(title: 'CEE'),
    _TargetExamItem(title: 'IOST Entrance'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Choose Your Target Exam',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: theme.textTheme.bodyLarge?.color,
          ),
        ),
        const SizedBox(height: 12),
        Column(
          children: List.generate(_items.length, (index) {
            final item = _items[index];
            final selected = index == selectedIndex;

            return Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: InkWell(
                onTap: onSelected == null
                    ? null
                    : () => onSelected!.call(index),
                borderRadius: BorderRadius.circular(14),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    color: theme.cardColor,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: selected
                          ? theme.primaryColor
                          : theme.dividerColor.withOpacity(0.85),
                      width: selected ? 1.4 : 1.1,
                    ),
                    boxShadow: selected
                        ? [
                            BoxShadow(
                              color: theme.primaryColor.withOpacity(0.10),
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ]
                        : [
                            BoxShadow(
                              color: theme.shadowColor.withOpacity(0.04),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          item.title,
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                            color: theme.textTheme.bodyLarge?.color,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

class _TargetExamItem {
  const _TargetExamItem({required this.title});

  final String title;
}
