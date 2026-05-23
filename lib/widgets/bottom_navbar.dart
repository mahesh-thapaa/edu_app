import 'package:edu_app/screens/home_screens.dart';
import 'package:edu_app/models/navbar_items_models.dart';
import 'package:edu_app/screens/test_screens.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;

  const BottomNavBar({super.key, required this.currentIndex});

  static const List<NavbarItemsModels> navItems = [
    NavbarItemsModels(icon: Icons.home_rounded, label: "Home"),
    NavbarItemsModels(icon: Icons.assignment_outlined, label: "Tests"),
    NavbarItemsModels(icon: Icons.trending_up_rounded, label: "Results"),
    NavbarItemsModels(icon: Icons.person_outline_rounded, label: "Profile"),
  ];

  PageRouteBuilder<void> _noAnimationRoute(Widget page) {
    return PageRouteBuilder<void>(
      pageBuilder: (_, __, ___) => page,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
      transitionsBuilder: (_, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  void _navigate(BuildContext context, int itemIndex) {
    if (itemIndex == 0) {
      Navigator.pushReplacement(
        context,
        _noAnimationRoute(const HomeScreens()),
      );
      return;
    }

    if (itemIndex == 1) {
      Navigator.pushReplacement(
        context,
        _noAnimationRoute(const TestScreens()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        height: 86,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: const Color(0xFFF9F9FF),
          border: Border(
            top: BorderSide(color: const Color(0xFFE6E6F2), width: 1.5),
          ),
        ),
        padding: const EdgeInsets.fromLTRB(16, 6, 16, 8),
        child: Row(
          children: List.generate(navItems.length * 2 - 1, (index) {
            if (index.isOdd) {
              return Container(
                width: 1,
                height: 42,
                color: const Color(0xFFE6E6F2),
              );
            }

            final itemIndex = index ~/ 2;
            final item = navItems[itemIndex];
            final isSelected = currentIndex == itemIndex;

            return Expanded(
              child: InkWell(
                onTap: () => _navigate(context, itemIndex),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        item.icon,
                        size: 20,
                        color: isSelected
                            ? const Color(0xFF4A5CF2)
                            : Colors.black87,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        item.label,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: isSelected
                              ? const Color(0xFF4A5CF2)
                              : Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
