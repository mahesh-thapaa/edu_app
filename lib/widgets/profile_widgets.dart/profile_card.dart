import 'package:edu_app/models/profile_models/profile_card_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:edu_app/provider/user_provider.dart';
import 'package:edu_app/provider/academic_provider.dart';

class ProfileCard extends StatelessWidget {
  final ProfileCardModels profileCard;
  const ProfileCard({super.key, required this.profileCard});

  @override
  Widget build(BuildContext context) {
    final userProvider = context.watch<UserProvider>();
    final academicProvider = context.watch<AcademicProvider>();
    
    final displayUserName = userProvider.fullName.isNotEmpty
        ? userProvider.fullName
        : profileCard.userName;

    final displayJoinedDate = userProvider.fullName.isNotEmpty
        ? "Joined on ${userProvider.joinedDate.day.toString().padLeft(2, '0')}/${userProvider.joinedDate.month.toString().padLeft(2, '0')}/${userProvider.joinedDate.year}"
        : profileCard.joinedDate;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(minHeight: 116),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Theme.of(context).dividerColor, width: 1.5),
        ),
        child: Row(
          children: [
            CircleAvatar(radius: 50),
            const SizedBox(width: 20),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    displayUserName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    academicProvider.targetCourse,
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  ),

                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month_rounded,
                        size: 16,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          displayJoinedDate,
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
