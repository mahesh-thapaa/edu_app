import 'package:flutter/material.dart';

class SupportCard extends StatefulWidget {
  const SupportCard({super.key});

  @override
  State<SupportCard> createState() => _SupportCardState();
}

class _SupportCardState extends State<SupportCard> {
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
            "Support",
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
                Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                    const SizedBox(width: 50),
                    Text(
                      "About App",
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
                Divider(
                  height: 30,
                  thickness: 1,
                  color: Theme.of(context).dividerColor,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.help_outline,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                    const SizedBox(width: 50),
                    Text(
                      "Help and Support",
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
