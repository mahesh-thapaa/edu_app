import 'package:edu_app/theme/app_colors.dart';
import 'package:edu_app/models/submit_models.dart';
import 'package:flutter/material.dart';

List<SubmitModels> summaryList = [
  SubmitModels(
    title: "Answered",
    count: 115,
    icon: Icons.check_circle,
    iconColor: AppColors.buttonColorLight,
    iconBackgroundColor: AppColors.bColor,
    countColor: AppColors.buttonColorLight,
    type: SummaryType.answered,
  ),

  SubmitModels(
    title: "Unanswered",
    count: 3,
    icon: Icons.lock_outline,
    iconColor: AppColors.buttonColorLight,
    iconBackgroundColor: const Color(0xFFE8EEFF),
    countColor: AppColors.buttonColorLight,
    type: SummaryType.unanswered,
  ),

  // SubmitModels(
  //   title: "Review Later",
  //   count: 2,
  //   icon: Icons.bookmark_border,
  //   iconColor: AppColors.buttonColorLight,
  //   iconBackgroundColor: const Color(0xFFF2F4FF),
  //   countColor: AppColors.buttonColorLight,
  //   type: SummaryType.reviewLater,
  // ),
];
