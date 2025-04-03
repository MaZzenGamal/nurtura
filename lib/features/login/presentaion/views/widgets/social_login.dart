import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurtura/core/theme/styles.dart';
import 'package:nurtura/generated/assets.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          'Or through',
          style: TextStyles.regular_16,
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.iconsLogosFacebook),
            Spacer(),
            SvgPicture.asset(Assets.iconsDeviconGoogle),
          ],
        ),
      ],
    );
  }
}
