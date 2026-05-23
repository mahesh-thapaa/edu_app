import 'package:edu_app/models/home_models/recent_mock_test_models.dart';
import 'package:flutter/material.dart';

class RecentMockTest extends StatelessWidget {
  final RecentMockTestModels mock;
  const RecentMockTest({super.key, required this.mock});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9FF),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFD7DDF4), width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mock.subject,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1D1D1D),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// LEFT SIDE
              Expanded(
                child: Wrap(
                  spacing: 12,
                  runSpacing: 10,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.description_outlined,
                          size: 14,
                          color: Colors.grey.shade600,
                        ),

                        const SizedBox(width: 4),

                        Text(
                          "${mock.questions} Questions",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          size: 14,
                          color: Colors.grey.shade600,
                        ),

                        const SizedBox(width: 4),

                        Text(
                          mock.duration,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.bar_chart,
                          size: 14,
                          color: Color(0xFFD9A618),
                        ),

                        const SizedBox(width: 4),

                        Text(
                          mock.difficulty,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFFD9A618),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              /// RIGHT SIDE
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// SCORE
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 60,
                            width: 60,

                            child: CircularProgressIndicator(
                              value: mock.score / 100,
                              strokeWidth: 6,
                              backgroundColor: const Color(0xFFE8E8FF),
                              color: const Color(0xFF4361EE),
                            ),
                          ),

                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "${mock.score}%",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11,
                                ),
                              ),

                              const Text(
                                "Score",
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(width: 14),

                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print("Start Again Pressed f");
                            },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4361EE),

                              elevation: 2,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),

                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                            ),

                            child: const Text(
                              "Start Again",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          const SizedBox(height: 6),

                          GestureDetector(
                            onTap: () {
                              print("View result clicked");
                            },
                            child: Text(
                              "View Result",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF375DFB),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
