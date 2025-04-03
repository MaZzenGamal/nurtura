import 'package:flutter/material.dart';
import 'package:nurtura/core/constants/widgets/unified_button.dart';
import 'package:nurtura/core/constants/widgets/unified_form_field.dart';
import 'package:nurtura/core/theme/colors.dart';
import 'package:nurtura/core/theme/styles.dart';
import 'package:nurtura/features/login/presentaion/views/widgets/social_login.dart';
import 'package:nurtura/features/register/presentation/view/register_screen.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: TextStyles.bold_15,
          ),
          const SizedBox(
            height: 8,
          ),
          UnifiedFormField(
            hint: 'user@gmail.com',
            prefix: Icon(Icons.email_outlined, color: Colors.black38),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Password',
            style: TextStyles.bold_15,
          ),
          const SizedBox(
            height: 8,
          ),
          UnifiedFormField(
            hint: 'password',
            prefix: Icon(Icons.visibility_off_outlined, color: Colors.black38),
          ),
          const SizedBox(
            height: 16,
          ),
          UnifiedButton(
            onPressed: () {},
            title: 'Sign In',
            isFullWidth: true,
            color: ColorsManager.mainColorLight,
            height: 40,
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,  MaterialPageRoute(
                  builder: (context) => const RegisterScreen(),
                ));
              },style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side:  const BorderSide(
                      color: ColorsManager.mainColorLight,
                      width: 4
                    ),
                  ),
                ),
            ), child: Text('Create account',style: TextStyles.bold_15,),),
          ),
          const SizedBox(
            height: 46,
          ),
          SocialLogin(),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Continue as a guest?',
                style: TextStyles.regular_16,
              ),
              Text(
                ' continue',
                style: TextStyles.regular_16.copyWith(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
