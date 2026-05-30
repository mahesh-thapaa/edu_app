// class TopicModels {
//   final String topicName;
//   // final double percentage;
//   final int correct;
//   final int incorrect;
//   TopicModels({
//     required this.topicName,
//     required this.correct,
//     required this.incorrect,
//   });
//   double get percentage{
//     final total = correct + incorrect;
//     if(total == 0) return 0;
//     return (correct / total) * 100;
//   }
// }

class TopicModels {
  final String topicName;
  final double percentage;

  const TopicModels({
    required this.topicName,
    required this.percentage,
  });
}