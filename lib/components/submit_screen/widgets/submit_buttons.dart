import 'package:edu_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SubmitButtons extends StatefulWidget {
  const SubmitButtons({super.key});

  @override
  State<SubmitButtons> createState() => _SubmitButtonsState();
}

class _SubmitButtonsState extends State<SubmitButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.backgroundlight,
              minimumSize: const Size.fromHeight(52),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: 1.5,
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Continue Exam",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              minimumSize: const Size.fromHeight(52),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Submit Test",
              style: TextStyle(
                color: AppColors.backgroundlight,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
