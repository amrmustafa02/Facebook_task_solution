import 'package:facebook_task_solution/core/app_theme.dart';
import 'package:facebook_task_solution/pages/home_page.dart';
import 'package:facebook_task_solution/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Task Solution',
      theme: AppTheme.appTheme,
      initialRoute: LoginPage.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
