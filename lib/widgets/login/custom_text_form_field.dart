import 'package:facebook_task_solution/core/app_theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final bool isPasswordField;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.isPasswordField = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool obscureText;

  @override
  void initState() {
    obscureText = widget.isPasswordField;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: obscureText,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        suffixIcon: widget.isPasswordField
            ? IconButton(
                icon: obscureText
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
                color: AppTheme.grey,
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
              )
            : null,
        fillColor: AppTheme.primary.withOpacity(0.05),
        filled: true,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: 16,
          color: AppTheme.grey,
        ),
        focusedBorder: _textFieldBorder(),
        focusedErrorBorder: _textFieldBorder(borderColor: AppTheme.red),
        enabledBorder: _textFieldBorder(),
        errorBorder: _textFieldBorder(borderColor: AppTheme.red),
      ),
    );
  }

  InputBorder _textFieldBorder({Color borderColor = AppTheme.grey}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: borderColor, width: 0.5),
    );
  }
}
