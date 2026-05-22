import 'package:edu_app/models/navbar_items_models.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  final List<NavbarItemsModels> navItems = [
    NavbarItemsModels(icon: Icons.home_rounded, label: "Home"),
    NavbarItemsModels(icon: Icons.assignment_outlined, label: "Tests"),
    NavbarItemsModels(icon: Icons.trending_up_rounded, label: "Results"),
    NavbarItemsModels(icon: Icons.person_outline_rounded, label: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        height: 86,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Color(0xFFE6E6F2), width: 1.5)),
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
            final isSelected = selectedIndex == itemIndex;

            return Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = itemIndex;
                  });
                },
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
