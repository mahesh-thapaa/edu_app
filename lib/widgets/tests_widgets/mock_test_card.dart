import 'package:flutter/material.dart';
import '../../models/test_models.dart/mock_test_models.dart';

class MockTestCard extends StatelessWidget {
  final List<MockTestModel> mockTests;

  const MockTestCard({super.key, required this.mockTests});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF9F9FF),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: const Color(0xFFDDE1FF), width: 2),
      ),
      child: Column(
        children: List.generate(mockTests.length, (index) {
          final mock = mockTests[index];

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            mock.title,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),

                          const SizedBox(height: 4),

                          Row(
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
                                  fontSize: 13,
                                  color: Colors.grey.shade600,
                                ),
                              ),

                              const SizedBox(width: 14),

                              Icon(
                                Icons.timer_outlined,
                                size: 14,
                                color: Colors.grey.shade600,
                              ),

                              const SizedBox(width: 4),

                              Text(
                                "${mock.duration} mins",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 12),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF375DFB),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 12,
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
                  ],
                ),
              ),

              if (index != mockTests.length - 1)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),

                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Color(0xFFE5E7EB),
                  ),
                ),
            ],
          );
        }),
      ),
    );
  }
}
