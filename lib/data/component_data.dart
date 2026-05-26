import 'package:edu_app/models/component_models/component_models.dart';
import 'package:edu_app/models/component_models/questions_models.dart';

final List<ComponentModels> componentData = [
  ComponentModels(
    title: 'Physics',
    question: 'What is SI Unit of Force?',
    options: ['Newton', 'Joule', 'Pascal', 'Watt'],
    selectedOptionIndex: 0,
    questionNumber: 15,
    totalQuestions: 120,
    answeredCount: 11,
    unansweredCount: 3,
  ),
];

List<QuestionsModels> questions = [
  QuestionsModels(questionNumber: 8, isAnswerd: true),
  QuestionsModels(questionNumber: 9, isAnswerd: true),
  QuestionsModels(questionNumber: 10, isAnswerd: true),
  QuestionsModels(questionNumber: 11, isAnswerd: true),
  QuestionsModels(questionNumber: 12, isAnswerd: true),
  QuestionsModels(questionNumber: 13, isAnswerd: true),
  QuestionsModels(questionNumber: 14, isAnswerd: false),
  QuestionsModels(questionNumber: 15, isAnswerd: true),
  QuestionsModels(questionNumber: 16, isAnswerd: false),
  QuestionsModels(questionNumber: 17, isAnswerd: false),
];
