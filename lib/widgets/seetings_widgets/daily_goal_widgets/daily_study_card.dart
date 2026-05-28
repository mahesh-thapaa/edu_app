import 'package:flutter/material.dart';

class StudyOption {
  const StudyOption({required this.title, this.subtitle});
  final String title;
  final String? subtitle;
}

class DailyStudyCard extends StatefulWidget {
  const DailyStudyCard({
    super.key,
    this.options = const [
      StudyOption(title: '30 Minutes'),
      StudyOption(title: '1 Hour'),
      StudyOption(title: '2 Hours', subtitle: 'Recommended for your schedule'),
      StudyOption(title: '3 Hours'),
      StudyOption(title: '4 Hours'),
    ],
    this.initialIndex = 2,
    this.onChanged,
  });

  final List<StudyOption> options;
  final int? initialIndex;
  final ValueChanged<int>? onChanged;

  @override
  State<DailyStudyCard> createState() => _DailyStudyCardState();
}

class _DailyStudyCardState extends State<DailyStudyCard> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Daily Study Target',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
        ),
        const SizedBox(height: 12),
        Column(
          children: List.generate(widget.options.length, (index) {
            final option = widget.options[index];
            final selected = index == selectedIndex;

            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: InkWell(
                onTap: () {
                  setState(() => selectedIndex = index);
                  widget.onChanged?.call(index);
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: selected
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).dividerColor,
                      width: selected ? 2 : 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              option.title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(
                                  context,
                                ).textTheme.bodyLarge?.color,
                              ),
                            ),
                            if (option.subtitle != null) ...[
                              const SizedBox(height: 6),
                              Text(
                                option.subtitle!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: selected
                                      ? Theme.of(context).primaryColor
                                      : Theme.of(context).hintColor,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        selected
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off,
                        color: selected
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).hintColor,
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
