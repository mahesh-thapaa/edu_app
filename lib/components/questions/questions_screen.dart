import 'dart:async';

import 'package:edu_app/components/questions/widgets/buttons.dart';
import 'package:edu_app/components/questions/widgets/question_pallet.dart';
import 'package:edu_app/components/questions/widgets/attempted_questions.dart';
import 'package:edu_app/components/questions/widgets/selected_options.dart';
import 'package:edu_app/data/component_data.dart';
import 'package:edu_app/theme/app_colors.dart';
import 'package:edu_app/widgets/top_bar.dart';
import 'package:edu_app/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
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
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
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
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            size: 14,
                            color: AppColors.backgroundlight,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            formatTime(duration),
                            style: TextStyle(
                              fontSize: 13,
                              color: AppColors.backgroundlight,
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
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: QuestionPallet(),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: Buttons(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
