import 'package:facebook_task_solution/core/app_assets.dart';
import 'package:facebook_task_solution/core/app_theme.dart';
import 'package:flutter/material.dart';

class CreatePostSection extends StatelessWidget {
  const CreatePostSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(
              AppAssets.modelOneImage,
            ),
          ),
          SizedBox(width: 16),
          Text(
            "What's on your mind?",
            style: TextStyle(
              color: AppTheme.grey,
              fontSize: 16,
            ),
          ),
          Spacer(),
          ImageIcon(
            size: 30,
            color: AppTheme.green,
            AssetImage(
              AppAssets.galleryIcon,
            ),
          )
        ],
      ),
    );
  }
}
