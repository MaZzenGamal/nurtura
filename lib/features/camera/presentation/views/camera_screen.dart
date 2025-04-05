import 'package:flutter/material.dart';
import 'package:nurtura/core/theme/colors.dart';
import 'package:nurtura/features/camera/presentation/views/widgets/camera_screen_body.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.mainColor,
      body: CameraScreenBody(
      ),
    );
  }
}
