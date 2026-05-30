import 'package:edu_app/models/subject_analysis_models/questions_analysis_models.dart';
import 'package:edu_app/models/subject_analysis_models/subject_analysis_models.dart';
import 'package:edu_app/models/subject_analysis_models/topic_models.dart';

final physics = SubjectAnalysisModels(
  subject: "Physics",
  session: "Academic Session 2026",
  correct: 31,
  incorrect: 7,
  skipped: 2,
);

final topics = [
  TopicModels(topicName: "Mechanics", percentage: 90),
  TopicModels(topicName: "Optics", percentage: 82.5),
  TopicModels(topicName: "Modern Physics", percentage: 65),
  TopicModels(topicName: "Thermodynamics", percentage: 73.54),
];

final questions = [
  QuestionsAnalysisModels(
    questionNumber: 12,
    userAnswer: "A",
    correctAnswer: "C",
    status: QuestionStatus.incorrect,
  ),
  QuestionsAnalysisModels(
    questionNumber: 18,
    userAnswer: "B",
    correctAnswer: "A",
    status: QuestionStatus.incorrect,
  ),
  QuestionsAnalysisModels(
    questionNumber: 27,
    userAnswer: "D",
    correctAnswer: "A",
    status: QuestionStatus.incorrect,
  ),
];
