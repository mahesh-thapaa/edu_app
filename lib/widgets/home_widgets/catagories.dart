import 'package:edu_app/models/home_models/catagories_models.dart';
import 'package:edu_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  const Catagories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CatagoriesModels> categories = [
      CatagoriesModels(
        title: "IOE ",
        subtitle: "100 Tests • 4.2k Students",
        subject: "NEXT: Physics #4",
        icon: Icons.architecture,
      ),
      CatagoriesModels(
        title: "CEE",
        subtitle: "120 Tests • 4.2k Students",
        subject: "120 Test. 4.2k Students",
        icon: Icons.science_outlined,
      ),
      CatagoriesModels(
        title: "IOST",
        subtitle: "85 Tests • 1.8k Students",
        subject: "85tests. 1.8k Students",
        icon: Icons.laptop_mac_outlined,
      ),
    ];
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Container(
            width: 265,
            margin: const EdgeInsets.only(right: 18),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.backgroundlight,
              borderRadius: BorderRadius.circular(26),
              border: Border.all(color: AppColors.bColor, width: 2),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black.withValues(alpha: 0.03),
              //     blurRadius: 10,
              //     offset: const Offset(0, 5),
              //   ),
              // ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      category.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: AppColors.htextLight,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "ACTIVE",
                      style: TextStyle(
                        color: AppColors.htextLight,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Text(
                  category.subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.iDark,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                LinearProgressIndicator(
                  value: 0.7,
                  backgroundColor: AppColors.iDark,
                  color: AppColors.buttonColorLight,
                ),
                SizedBox(height: 10),
                const SizedBox(height: 7),
                Text(
                  category.subject,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.iDark,
                    fontWeight: FontWeight.w400,
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
