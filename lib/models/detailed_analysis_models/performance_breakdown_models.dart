class PerformanceBreakdownModels {
  final double accuracy;
  final int completion;
  final int avgTimeSeconds;
  final int previousImprovement;
  final int currentImprovement;
  final String bestSubject;
  final int bestSubjectPercent;
  final String needsWorkSubject;
  final int needsWorkPercent;

  const PerformanceBreakdownModels({
    required this.accuracy,
    required this.completion,
    required this.avgTimeSeconds,
    required this.previousImprovement,
    required this.currentImprovement,
    required this.bestSubject,
    required this.bestSubjectPercent,
    required this.needsWorkSubject,
    required this.needsWorkPercent,
  });
}

