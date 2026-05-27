import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:edu_app/provider/theme_provider.dart';

class PreferencesCard extends StatefulWidget {
  const PreferencesCard({super.key});

  @override
  State<PreferencesCard> createState() => _PreferencesCardState();
}

class _PreferencesCardState extends State<PreferencesCard> {
  bool isNotificationEnabled = false;

  TextStyle titleStyle(BuildContext context) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).textTheme.bodyLarge?.color,
    );
  }

  Widget buildPreferenceRow({
    required BuildContext context,
    required IconData icon,
    required String title,
    required Widget trailing,
  }) {
    return Row(
      children: [
        Icon(icon, color: Theme.of(context).textTheme.bodyLarge?.color),
        const SizedBox(width: 16),
        Expanded(child: Text(title, style: titleStyle(context))),
        trailing,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Preferences",
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
                buildPreferenceRow(
                  context: context,
                  icon: Icons.notifications_none_outlined,
                  title: "Notifications",
                  trailing: Switch(
                    value: isNotificationEnabled,
                    onChanged: (value) {
                      setState(() {
                        isNotificationEnabled = value;
                      });
                    },
                    activeColor: Theme.of(context).primaryColor,
                  ),
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: Theme.of(context).dividerColor,
                ),
                buildPreferenceRow(
                  context: context,
                  icon: Icons.settings_outlined,
                  title: "Dark Mode",
                  trailing: Switch(
                    value: themeProvider.isDarkMode,
                    onChanged: (_) {
                      themeProvider.toggleTheme();
                    },
                    activeColor: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
