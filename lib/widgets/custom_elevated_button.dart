import 'package:flutter/material.dart';

import '../core/app_theme.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Function()? onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final double borderRadius;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.textColor,
    this.onPressed,
    this.backgroundColor = AppTheme.primary,
    this.borderColor = AppTheme.primary,
    this.borderRadius = 16,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: borderColor),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
