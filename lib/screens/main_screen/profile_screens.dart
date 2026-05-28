import 'package:edu_app/data/profile_data.dart';
import 'package:edu_app/widgets/bottom_navbar.dart';
import 'package:edu_app/widgets/profile_widgets.dart/account_card.dart';
import 'package:edu_app/widgets/profile_widgets.dart/logout_buttons.dart';
import 'package:edu_app/widgets/profile_widgets.dart/preferences_card.dart';
import 'package:edu_app/widgets/profile_widgets.dart/profile_card.dart';
import 'package:edu_app/widgets/profile_widgets.dart/support_card.dart';
import 'package:edu_app/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreens extends StatelessWidget {
  const ProfileScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: const BottomNavBar(currentIndex: 3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "My Profile",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ProfileCard(profileCard: profileCard),

              const SizedBox(height: 20),
              const PreferencesCard(),
              const SizedBox(height: 20),
              const AccountCard(),
              const SizedBox(height: 20),
              const SupportCard(),
              const SizedBox(height: 20),
              const LogoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}
