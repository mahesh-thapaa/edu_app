import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
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
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                "Your Courses",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              Spacer(),
              Text(
                "View All",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
