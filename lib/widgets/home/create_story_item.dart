import 'package:facebook_task_solution/core/app_assets.dart';
import 'package:flutter/material.dart';

import '../../core/app_theme.dart';

class CreateStoryItem extends StatelessWidget {
  const CreateStoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        width: double.infinity,
                        AppAssets.modelOneImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16)
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.white,
                ),
                child: const CircleAvatar(
                  radius: 16,
                  backgroundColor: AppTheme.primary,
                  child: Icon(
                    Icons.add,
                    color: AppTheme.white,
                  ),
                ),
              )
            ],
          ),
        ),
        const Text(
          "Create a Story",
          textAlign:  TextAlign.center,
          style: TextStyle(
            color: AppTheme.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
