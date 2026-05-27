import 'package:edu_app/components/submit_screen/submit_screen.dart';
import 'package:edu_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final previousButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: theme.dividerColor, width: 1.5),
      ),
      foregroundColor: theme.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
      elevation: 0,
    );

    final nextButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: theme.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 14),
      elevation: 0,
    );

    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: previousButtonStyle,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 18,
                  color:AppColors.buttonColorLight,
                ),
                const SizedBox(width: 10),
                Text('Previous', style: TextStyle(color: AppColors.buttonColorLight)),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: ElevatedButton(
            style: nextButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubmitScreen()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Next',
                  style: TextStyle(color: AppColors.backgroundlight),
                ),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                  color: AppColors.backgroundlight,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
