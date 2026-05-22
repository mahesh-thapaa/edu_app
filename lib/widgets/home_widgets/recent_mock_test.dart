import 'package:edu_app/models/recent_mock_test_models.dart';
import 'package:flutter/material.dart';

class RecentMockCard extends StatelessWidget {
  final RecentMockTestModels mock;
  final VoidCallback? onCardTap;
  final VoidCallback? onStartAgainTap;
  final VoidCallback? onViewResultsTap;

  const RecentMockCard({
    super.key,
    required this.mock,
    this.onCardTap,
    this.onStartAgainTap,
    this.onViewResultsTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onCardTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          margin: const EdgeInsets.only(bottom: 18),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFF9F9FF),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: const Color(0xFFD7DDF4), width: 2),
          ),
          child: Row(
            children: [
              /// LEFT ICON
              Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  color: Color(0xFF4A56E2),
                  shape: BoxShape.circle,
                ),
                child: Icon(mock.icon, color: Colors.white, size: 34),
              ),

              const SizedBox(width: 14),

              /// CENTER CONTENT
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mock.subject,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Wrap(
                      spacing: 12,
                      runSpacing: 6,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.menu_book,
                              size: 16,
                              color: Color(0xFF2F3341),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              "${mock.questions} Questions",
                              style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xFF2F3341),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.access_time,
                              size: 16,
                              color: Color(0xFF2F3341),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              mock.duration,
                              style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xFF2F3341),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.bar_chart,
                              color: Color(0xFFF2A10A),
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              mock.difficulty,
                              style: const TextStyle(
                                color: Color(0xFFF2A10A),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 6),

                    Text(
                      mock.attemptDate,
                      style: const TextStyle(
                        color: Color(0xFF6F7484),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 10),

              /// RIGHT SIDE
              Column(
                children: [
                  /// SCORE CIRCLE
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 58,
                        width: 58,
                        child: CircularProgressIndicator(
                          value: mock.score / 100,
                          strokeWidth: 4,
                          backgroundColor: const Color(0xFFE3E8FF),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xFF375DFB),
                          ),
                        ),
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${mock.score}%",
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            "Score",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF6F7484),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  /// BUTTON
                  Material(
                    color: const Color(0xFF375DFB),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: onStartAgainTap,
                      borderRadius: BorderRadius.circular(10),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Text(
                          "Start Again",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  InkWell(
                    onTap: onViewResultsTap,
                    borderRadius: BorderRadius.circular(6),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                      child: Text(
                        "View Results",
                        style: TextStyle(
                          color: Color(0xFF375DFB),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class RecentMockTest extends StatelessWidget {
//   final RecentMockTestModels mock;
//   final VoidCallback? onCardTap;
//   final VoidCallback? onStartAgainTap;
//   final VoidCallback? onViewResultsTap;

//   const RecentMockTest({
//     super.key,
//     required this.mock,
//     this.onCardTap,
//     this.onStartAgainTap,
//     this.onViewResultsTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return RecentMockCard(
//       mock: mock,
//       onCardTap: onCardTap,
//       onStartAgainTap: onStartAgainTap,
//       onViewResultsTap: onViewResultsTap,
//     );
//   }
// }
