import 'package:edu_app/models/catagories_models.dart';
import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  const Catagories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CatagoriesModels> categories = [
      CatagoriesModels(
        title: "IOE Entrance",
        subtitle: "100 mock tests",
        icon: Icons.school,
      ),
      CatagoriesModels(
        title: "CEE",
        subtitle: "80 mock tests",
        icon: Icons.edit_document,
      ),
      CatagoriesModels(
        title: "IOE Entrance",
        subtitle: "150 mock test",
        icon: Icons.science,
      ),
    ];
    return SizedBox(
      height: 178,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Container(
            width: 200,
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFF3D5AFE),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black26,
                  child: Icon(category.icon, color: Colors.white, size: 26),
                ),
                const SizedBox(height: 12),
                Text(
                  category.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  category.subtitle,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
