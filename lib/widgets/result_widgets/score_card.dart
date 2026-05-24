import 'package:edu_app/models/result_models.dart/score_card_models.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  final ScoreCardModels scorecard;
  const ScoreCard({super.key, required this.scorecard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: scorecard.color,
              border: Border.all(
                width: 2,
                color: Theme.of(context).dividerColor,
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(scorecard.icon, color: Colors.white, size: 24),
          ),
          const SizedBox(height: 6),
          Text(
            scorecard.title,
            textAlign: TextAlign.center,
            maxLines: scorecard.title == 'Unattempted' ? 1 : 2,
            softWrap: scorecard.title == 'Unattempted' ? false : true,
            overflow: scorecard.title == 'Unattempted'
                ? TextOverflow.clip
                : TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
          const SizedBox(height: 3),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                scorecard.value,
                textAlign: TextAlign.center,
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.fade,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                scorecard.subtitle,
                textAlign: TextAlign.center,
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  color: scorecard.color,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
