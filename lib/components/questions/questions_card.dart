import 'dart:async';

import 'package:edu_app/components/questions/widgets/attempted_questions.dart';
import 'package:edu_app/components/questions/widgets/selected_options.dart';
import 'package:edu_app/data/component_data.dart';
import 'package:edu_app/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class QuestionsCard extends StatefulWidget {
  const QuestionsCard({super.key});

  @override
  State<QuestionsCard> createState() => _QuestionsCardState();
}

class _QuestionsCardState extends State<QuestionsCard> {
  late Timer timer;
  Duration duration = const Duration(hours: 1, minutes: 30, seconds: 15);
  late List<int> selectedOptionIndexes;

  @override
  void initState() {
    super.initState();
    selectedOptionIndexes = List<int>.generate(
      componentData.length,
      (index) => componentData[index].selectedOptionIndex,
    );
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => decreaseTime());
  }

  void decreaseTime() {
    final seconds = duration.inSeconds - 1;
    if (seconds < 0) {
      timer.cancel();
    } else {
      setState(() => duration = Duration(seconds: seconds));
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$hours:$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final currentTitle = componentData.isNotEmpty
        ? componentData.first.title
        : '';

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      currentTitle,
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(
                          context,
                        ).primaryColor.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            size: 14,
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            formatTime(duration),
                            style: TextStyle(
                              fontSize: 13,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: AttemptedQuestions(summary: componentData.first),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: List.generate(componentData.length, (
                    questionIndex,
                  ) {
                    final question = componentData[questionIndex];

                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: questionIndex == componentData.length - 1
                            ? 0
                            : 20,
                      ),
                      child: SelectedOptions(
                        question: question,
                        selectedOptionIndex:
                            selectedOptionIndexes[questionIndex],
                        onOptionSelected: (optionIndex) {
                          setState(() {
                            selectedOptionIndexes[questionIndex] = optionIndex;
                          });
                        },
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
