import 'package:edu_app/data/subject_analysis_data.dart';
import 'package:edu_app/models/subject_analysis_models/questions_analysis_models.dart';
import 'package:edu_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class QuestionsAnalysisCard extends StatefulWidget {
  const QuestionsAnalysisCard({super.key});

  @override
  State<QuestionsAnalysisCard> createState() => _QuestionsAnalysisCardState();
}

class _QuestionsAnalysisCardState extends State<QuestionsAnalysisCard> {
  QuestionStatus? _selectedStatus = QuestionStatus.incorrect;

  static const _filters = <_QuestionFilter>[
    _QuestionFilter(label: 'All', status: null),
    _QuestionFilter(label: 'Incorrect', status: QuestionStatus.incorrect),
    _QuestionFilter(label: 'Correct', status: QuestionStatus.correct),
    _QuestionFilter(label: 'Skipped', status: QuestionStatus.skipped),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final visibleQuestions = _selectedStatus == null
        ? questions
        : questions
              .where((question) => question.status == _selectedStatus)
              .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(_filters.length, (index) {
              final filter = _filters[index];
              final isSelected = filter.status == _selectedStatus;

              return Padding(
                padding: EdgeInsets.only(
                  right: index == _filters.length - 1 ? 0 : 10,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(18),
                  onTap: () {
                    setState(() {
                      _selectedStatus = filter.status;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 180),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? const Color(0xFF4C6FFF)
                          : const Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Text(
                      filter.label,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: isSelected
                            ? Colors.white
                            : const Color(0xFF666666),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        const SizedBox(height: 18),
        Text(
          _titleForFilter(_selectedStatus),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: theme.textTheme.bodyLarge?.color,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Theme.of(context).dividerColor,
              width: 1.5,
            ),
          ),
          child: visibleQuestions.isEmpty
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 28,
                    horizontal: 16,
                  ),
                  child: Center(
                    child: Text(
                      'No questions found for this filter.',
                      style: TextStyle(
                        fontSize: 13,
                        color: theme.textTheme.bodySmall?.color,
                      ),
                    ),
                  ),
                )
              : Column(
                  children: List.generate(visibleQuestions.length, (index) {
                    final question = visibleQuestions[index];
                    final isLastItem = index == visibleQuestions.length - 1;

                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _QuestionStatusIcon(status: question.status),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Question ${question.questionNumber}',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: theme.textTheme.bodyLarge?.color,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    _AnswerLine(
                                      label: 'Your Answer',
                                      value: question.userAnswer ?? '-',
                                      valueColor:
                                          question.status ==
                                              QuestionStatus.incorrect
                                          ? (theme.brightness == Brightness.dark
                                                ? const Color(0xFFFF6B6B)
                                                : theme.colorScheme.error)
                                          : (theme.textTheme.bodyLarge?.color ??
                                                Colors.black87),
                                      showCross:
                                          question.status ==
                                              QuestionStatus.incorrect &&
                                          question.userAnswer != null,
                                    ),
                                    const SizedBox(height: 6),
                                    _AnswerLine(
                                      label: 'Correct Answer',
                                      value: question.correctAnswer,
                                      valueColor: theme.primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (!isLastItem)
                          Divider(
                            height: 1,
                            thickness: 1,
                            color: theme.dividerColor,
                          ),
                      ],
                    );
                  }),
                ),
        ),
      ],
    );
  }

  String _titleForFilter(QuestionStatus? status) {
    switch (status) {
      case QuestionStatus.correct:
        return 'Correct Questions';
      case QuestionStatus.skipped:
        return 'Skipped Questions';
      case QuestionStatus.incorrect:
        return 'Incorrect Questions';
      case null:
        return 'All Questions';
    }
  }
}

class _QuestionFilter {
  final String label;
  final QuestionStatus? status;

  const _QuestionFilter({required this.label, required this.status});
}

class _QuestionStatusIcon extends StatelessWidget {
  final QuestionStatus status;

  const _QuestionStatusIcon({required this.status});

  @override
  Widget build(BuildContext context) {
    final Color color;
    final IconData icon;

    switch (status) {
      case QuestionStatus.correct:
        color = Colors.green;
        icon = Icons.check;
        break;
      case QuestionStatus.skipped:
        color = Colors.orange;
        icon = Icons.remove;
        break;
      case QuestionStatus.incorrect:
        color = const Color(0xFFE53935);
        icon = Icons.priority_high;
        break;
    }

    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Icon(icon, color: AppColors.backgroundlight, size: 18),
    );
  }
}

class _AnswerLine extends StatelessWidget {
  final String label;
  final String value;
  final Color valueColor;
  final bool showCross;

  const _AnswerLine({
    required this.label,
    required this.value,
    required this.valueColor,
    this.showCross = false,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 13,
          color: Theme.of(context).textTheme.bodyMedium?.color,
        ),
        children: [
          TextSpan(
            text: '$label → ',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodySmall?.color,
            ),
          ),
          TextSpan(
            text: value,
            style: TextStyle(color: valueColor, fontWeight: FontWeight.w600),
          ),
          if (showCross)
            TextSpan(
              text: '  ✕',
              style: TextStyle(
                color: (Theme.of(context).brightness == Brightness.dark)
                    ? const Color(0xFFFF6B6B)
                    : Theme.of(context).colorScheme.error,
                fontWeight: FontWeight.w700,
              ),
            ),
        ],
      ),
    );
  }
}
