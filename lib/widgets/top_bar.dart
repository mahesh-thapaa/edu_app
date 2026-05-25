import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  // final String title;

  const TopBar({
    super.key,
    // required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text("", style: TextStyle(fontSize: 1)),
              const CircleAvatar(radius: 20, child: Text("")),
              const Spacer(),
              IconButton(
                onPressed: () {
                  print("Notification Icon Presses");
                },
                icon: const Icon(Icons.notifications),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
