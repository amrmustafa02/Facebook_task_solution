import 'package:facebook_task_solution/core/app_assets.dart';
import 'package:facebook_task_solution/core/app_theme.dart';
import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final String iconPath;
  final Function()? onPressed;

  const AppBarIcon({super.key, required this.iconPath, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: ImageIcon(
        AssetImage(iconPath),
        color: AppTheme.black,
        size: 25,
      ),
      onPressed: onPressed,
    );
  }
}
