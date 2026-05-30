class SubjectAnalysisModels {
  final String subject;
  final String session;
  final int correct;
  final int incorrect;
  final int skipped;
  SubjectAnalysisModels({
    required this.subject,
    required this.session,
    required this.correct,
    required this.incorrect,
    required this.skipped,
  });
  int get total => correct + incorrect + skipped;
  double get accuracy => total == 0 ? 0 : (correct / total) * 100;
}
