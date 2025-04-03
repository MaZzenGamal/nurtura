import 'package:flutter/material.dart';
import 'package:nurtura/core/theme/theme.dart';
import 'package:nurtura/features/login/presentaion/views/login_screen.dart';
import 'package:nurtura/features/register/presentation/view/register_screen.dart';
import 'package:nurtura/features/splash%20&%20start/presentation/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
