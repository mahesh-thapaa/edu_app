import 'package:edu_app/screens/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';

class AccountCard extends StatefulWidget {
  const AccountCard({super.key});

  @override
  State<AccountCard> createState() => _AccountCardState();
}

class _AccountCardState extends State<AccountCard> {
  Widget buildActionButton(BuildContext context) {
    return Icon(
      Icons.arrow_forward_ios_rounded,
      size: 14,
      color: Theme.of(context).textTheme.bodyLarge?.color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Account",
            style: TextStyle(
              fontSize: 17,
              color: Theme.of(context).textTheme.bodyLarge?.color,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Container(
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
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const SettingsScreen()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      const SizedBox(width: 50),
                      Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                      ),
                      const Spacer(),
                      buildActionButton(context),
                    ],
                  ),
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: Theme.of(context).dividerColor,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.privacy_tip_outlined,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                    const SizedBox(width: 50),
                    Text(
                      "Privacy",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                    ),
                    const Spacer(),
                    buildActionButton(context),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
