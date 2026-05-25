import 'package:edu_app/components/questions/widgets/question_header.dart';
import 'package:edu_app/components/questions/widgets/answer_option_tile.dart';
import 'package:edu_app/models/component_models/component_models.dart';
import 'package:flutter/material.dart';

class SelectedOptions extends StatelessWidget {
  final ComponentModels question;
  final int selectedOptionIndex;
  final ValueChanged<int> onOptionSelected;

  const SelectedOptions({
    super.key,
    required this.question,
    required this.selectedOptionIndex,
    required this.onOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Theme.of(context).dividerColor, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionHeader(title: question.title, question: question.question),
          const SizedBox(height: 18),
          ...List.generate(question.options.length, (index) {
            return QuestionOptionTile(
              label: String.fromCharCode(65 + index),
              option: question.options[index],
              selected: selectedOptionIndex == index,
              onTap: () => onOptionSelected(index),
            );
          }),
        ],
      ),
    );
  }
}
