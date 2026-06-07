import 'package:edu_app/screens/main_screen/profile_screens.dart';
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
              const CircleAvatar(radius: 20, child: Text("")),
              const Spacer(),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreens(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.people),
                    ),
                  ),
                  // const SizedBox(width: 5),
                  // IconButton(
                  //   onPressed: () {
                  //     print("Notification Icon Presses");
                  //   },
                  //   icon: const Icon(Icons.notifications),
                  // ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
