import 'package:edu_app/screens/settings_screen/change_password_screen.dart';
import 'package:edu_app/screens/settings_screen/edit_profile_screen.dart';
import 'package:edu_app/screens/settings_screen/email_screen.dart';
import 'package:edu_app/screens/settings_screen/phone_number_screen.dart';
import 'package:edu_app/widgets/seetings_widgets/account_card.dart';
import 'package:edu_app/widgets/seetings_widgets/study__card.dart';
import 'package:edu_app/screens/settings_screen/daily_goal_screen.dart';
import 'package:edu_app/screens/settings_screen/preferred_screens.dart';
import 'package:edu_app/screens/settings_screen/study_remainder_screen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                    ),
                    const SizedBox(width: 100),
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                AccountCard(
                  onEditProfileTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const EditProfileScreen(),
                      ),
                    );
                  },
                  onChangePasswordTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const ChangePasswordScreen(),
                      ),
                    );
                  },
                  onEmailTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const EmailScreen()),
                    );
                  },
                  onPhoneNumberTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const PhoneNumberScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                StudyCard(
                  onDailyGoalTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const DailyGoalScreen(),
                      ),
                    );
                  },
                  onStudyTimerTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const StudyRemainderScreen(),
                      ),
                    );
                  },
                  onPreferredCoursesTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const PreferredScreens(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
