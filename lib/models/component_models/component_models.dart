class ComponentModels {
  final String title;
  final String question;
  final List<String> options;
  final int selectedOptionIndex;
  final int questionNumber;
  final int totalQuestions;
  final int answeredCount;
  final int unansweredCount;

  ComponentModels({
    required this.title,
    required this.question,
    required this.options,
    this.selectedOptionIndex = -1,
    this.questionNumber = 1,
    this.totalQuestions = 1,
    this.answeredCount = 0,
    this.unansweredCount = 0,
  });
}
