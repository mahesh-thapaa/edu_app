import 'package:flutter/material.dart';

class PasswordRulesWidgets extends StatelessWidget {
  const PasswordRulesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.info, color: Colors.red),
              const SizedBox(width: 10),
              Text(
                "Password Rules",
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check_circle_outline,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(width: 10),

              Expanded(
                child: Text(
                  "Min 8 charactersMin 8 characters, at least 1 uppercase letter, 1 lowercase letter",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.radio_button_unchecked,
                color:
                    Theme.of(context).iconTheme.color ??
                    Theme.of(context).textTheme.bodyLarge?.color,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "1 number required and 1 special character required.",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
