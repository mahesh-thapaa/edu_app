import 'package:edu_app/data/leaderboard_data.dart';
import 'package:edu_app/models/leaderboard_models/current_rank_models.dart';
import 'package:edu_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CurrentRank extends StatelessWidget {
  CurrentRank({super.key});

  final CurrentRankModels rank = currentRankData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Theme.of(context).dividerColor, width: 1.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'YOUR CURRENT RANK',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.backgroundlight.withValues(alpha: 0.8),
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  '#${currentRankData.currentRank}',
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AppColors.backgroundlight,
                  ),
                ),
              ],
            ),

            /// RIGHT SIDE
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${currentRankData.currentRank}/${currentRankData.totalUsers}',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.backgroundlight,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  'Top ${currentRankData.topPercentage}%',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.backgroundlight.withValues(alpha: 0.8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
