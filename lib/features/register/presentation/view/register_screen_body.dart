import 'package:flutter/material.dart';
import 'package:nurtura/core/constants/widgets/unified_button.dart';
import 'package:nurtura/core/constants/widgets/unified_form_field.dart';
import 'package:nurtura/core/theme/colors.dart';
import 'package:nurtura/core/theme/styles.dart';
import 'package:nurtura/features/login/presentaion/views/widgets/social_login.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full name',
            style: TextStyles.bold_15,
          ),
          const SizedBox(
            height: 8,
          ),
          UnifiedFormField(
            hint: 'type the full name',
          ),
          const SizedBox(
            height: 16,
          ),
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
          Text(
            'Re-enter Password',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle,
                size: 12,
              ),
              const SizedBox(width: 4), // Add spacing to avoid text sticking to the icon
              Expanded(
                child: Text(
                  'I agree to send the latest offers from the application to ',
                  style:  TextStyle(
                    fontSize: 10,
                  ),),
                ),
              Text(
                'NURTURA',
                style: TextStyles.regular_11,
              ),
            ],
          ),

          Spacer(),
          UnifiedButton(
            onPressed: () {},
            title: 'Create an account',
            isFullWidth: true,
            color: ColorsManager.mainColorLight,
            height: 40,
          ),
        ],
      ),
    );
  }
}
