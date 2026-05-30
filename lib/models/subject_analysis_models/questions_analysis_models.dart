enum QuestionStatus {
  correct,
  incorrect,
  skipped,
}

class QuestionsAnalysisModels {
  final int questionNumber;
  final String? userAnswer;
  final String correctAnswer;
  final QuestionStatus status;

  const QuestionsAnalysisModels({
    required this.questionNumber,
    required this.userAnswer,
    required this.correctAnswer,
    required this.status,
  });
}