import 'package:edu_app/models/resume_models.dart';
import 'package:edu_app/models/user_models.dart';
import 'package:edu_app/widgets/home_widgets/catagories.dart';
import 'package:edu_app/widgets/home_widgets/resume_card.dart';
import 'package:edu_app/widgets/home_widgets/top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final ResumeModels resume = ResumeModels(
      title: "Resume Last Mock",
      subtitle: "Physics Full Mock #5",
      progess: 0.5,
      attempted: 45,
      total: 100,
      remainingTime: "48 minutes ramaining",
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(user: UserModels(name: 'Mahesh')),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Catagories(),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ResumeCard(resume: resume),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
