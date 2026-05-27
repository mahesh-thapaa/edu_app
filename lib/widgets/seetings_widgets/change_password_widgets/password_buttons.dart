import 'package:edu_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class PasswordButtons extends StatelessWidget {
  const PasswordButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 18),
              side: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 1.5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Cancel",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                // color: AppColors.buttonColorLight,
              ),
            ),
          ),
        ),

        const SizedBox(width: 16),

        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonColorDark,
              padding: const EdgeInsets.symmetric(vertical: 18),

              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Update",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.backgroundlight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
