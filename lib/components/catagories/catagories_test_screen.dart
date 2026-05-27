import 'package:edu_app/components/catagories/widgets/mock_test_card.dart';
import 'package:edu_app/data/test_data.dart';
import 'package:edu_app/widgets/bottom_navbar.dart';
import 'package:edu_app/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class CatagoriesTestScreen extends StatefulWidget {
  const CatagoriesTestScreen({super.key});

  @override
  State<CatagoriesTestScreen> createState() => _CatagoriesTestScreenState();
}

class _CatagoriesTestScreenState extends State<CatagoriesTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    // ResumeCard(resume: resume),
                    // const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Mock Tests",
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "View All",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    MockTestCard(mockTests: mockTests),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
