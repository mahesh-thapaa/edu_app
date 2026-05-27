import 'package:edu_app/widgets/seetings_widgets/change_password_widgets/change_password_card.dart';
import 'package:edu_app/widgets/seetings_widgets/change_password_widgets/password_buttons.dart';
import 'package:edu_app/widgets/seetings_widgets/change_password_widgets/password_rules_widgets.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                    ),
                    const SizedBox(width: 70),
                    Text(
                      "Change Password",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const ChangePasswordCard(),
                const SizedBox(height: 20),
                const PasswordRulesWidgets(),
                const SizedBox(height: 20),
                const PasswordButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
