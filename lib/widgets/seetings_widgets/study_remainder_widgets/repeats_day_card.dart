import 'package:flutter/material.dart';

class RepeatsDayCard extends StatefulWidget {
  const RepeatsDayCard({super.key, this.initialSelected, this.onChanged});

  final List<int>? initialSelected;
  final ValueChanged<List<int>>? onChanged;

  @override
  State<RepeatsDayCard> createState() => _RepeatsDayCardState();
}

class _RepeatsDayCardState extends State<RepeatsDayCard> {
  static const _labels = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  late final Set<int> _selected;

  @override
  void initState() {
    super.initState();
    _selected = (widget.initialSelected ?? [0, 1, 2, 3, 4, 5]).toSet();
  }

  void _toggle(int index) {
    setState(() {
      if (_selected.contains(index))
        _selected.remove(index);
      else
        _selected.add(index);
    });
    widget.onChanged?.call(_selected.toList()..sort());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'REPEAT DAYS',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: theme.textTheme.bodySmall?.color,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: theme.dividerColor, width: 1.2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(_labels.length, (i) {
              final selected = _selected.contains(i);

              return Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: i == _labels.length - 1 ? 0 : 12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () => _toggle(i),
                        borderRadius: BorderRadius.circular(18),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: selected
                                ? theme.primaryColor
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                              color: selected
                                  ? theme.primaryColor
                                  : theme.dividerColor.withOpacity(0.6),
                              width: selected ? 0 : 1.0,
                            ),
                            boxShadow: selected
                                ? [
                                    BoxShadow(
                                      color: theme.primaryColor.withOpacity(
                                        0.12,
                                      ),
                                      blurRadius: 6,
                                      spreadRadius: 0.5,
                                    ),
                                  ]
                                : null,
                          ),
                          child: selected
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 16,
                                )
                              : const SizedBox.shrink(),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        _labels[i],
                        style: TextStyle(
                          fontSize: 12,
                          color: theme.textTheme.bodySmall?.color,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
