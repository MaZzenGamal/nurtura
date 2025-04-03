import 'package:flutter/material.dart';
import 'package:nurtura/features/login/presentaion/views/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LoginScreenBody(),
      ),
    );
  }
}
