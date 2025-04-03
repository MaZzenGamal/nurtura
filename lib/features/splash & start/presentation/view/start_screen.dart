import 'package:flutter/material.dart';
import 'package:nurtura/features/splash%20&%20start/presentation/view/widgets/start_screen_body.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: StartScreenBody()),
    );
  }
}
