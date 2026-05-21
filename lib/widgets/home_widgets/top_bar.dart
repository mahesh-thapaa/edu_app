import 'package:edu_app/models/user_models.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final UserModels user;
  const TopBar({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(radius: 40, child: Text("Logo")),
              const Spacer(),
              IconButton(
                onPressed: () {
                  print("Notification Icon Presses");
                },
                icon: const Icon(Icons.notifications),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  print("Profile Icon Clicked");
                },
                child: const CircleAvatar(child: Icon(Icons.person)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Text(
                "Good Evening",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 5),
              Icon(Icons.waving_hand, color: Colors.orange),
            ],
          ),
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Text("Stay Consistent, your sucess is closer \nthan you think"),
          const SizedBox(height: 10),
          Container(
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: const Color(0xFFE5E7EB),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    print("Search");
                  },
                  icon: const Icon(Icons.search, size: 30),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search mock test,topics...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print("Dropdown");
                  },
                  icon: const Icon(Icons.arrow_drop_down),
                ),
                const SizedBox(width: 5),
                IconButton(
                  onPressed: () {
                    print("Menu clicked");
                  },
                  icon: const Icon(Icons.menu),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
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
