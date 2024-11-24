import 'package:facebook_task_solution/core/app_assets.dart';
import 'package:facebook_task_solution/core/app_theme.dart';
import 'package:facebook_task_solution/widgets/custom_elevated_button.dart';
import 'package:facebook_task_solution/widgets/login/custom_text_form_field.dart';
import 'package:facebook_task_solution/widgets/login/login_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Todo: use extensions on context
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: size.height * 0.10,
                 child: Image.asset(AppAssets.logo),
              ),
              const SizedBox(height: 32),
              const Expanded(
                child: SingleChildScrollView(
                  child: LoginForm(),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
                child: CustomElevatedButton(
                  text: 'Create Account',
                  textColor: AppTheme.primary,
                  backgroundColor: AppTheme.white,
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: size.height * 0.05,
                child: Image.asset(AppAssets.metaImage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
