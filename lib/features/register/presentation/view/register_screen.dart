import 'package:flutter/material.dart';
import 'package:nurtura/core/theme/colors.dart';
import 'package:nurtura/core/theme/styles.dart';
import 'package:nurtura/features/register/presentation/view/register_screen_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Create a New Account',style: TextStyles.bold_15,),
        backgroundColor: ColorsManager.backgroundColor,
      ),
      body: RegisterScreenBody(),
    );
  }
}
