import 'package:facebook_task_solution/core/app_assets.dart';
import 'package:facebook_task_solution/core/app_theme.dart';
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AppAssets.modelTwoImage,
          ),
        ),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppTheme.primary,
                width: 3,
              ),
            ),
            child: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                AppAssets.modelThreeImage,
              ),
            ),
          ),
          const Spacer(),
          const Text(
            "Author Name",
            style: TextStyle(
              color: AppTheme.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
