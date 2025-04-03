import 'package:flutter/material.dart';
import 'package:nurtura/core/constants/widgets/custom_button.dart';
import 'package:nurtura/core/theme/colors.dart';
import 'package:nurtura/core/theme/styles.dart';

class StartScreenBody extends StatelessWidget {
  const StartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'assets/images/start.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                bottom: -20,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                    decoration: BoxDecoration(
                      color: ColorsManager.backgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'NURTURA',
                      style: TextStyles.extraBold_24.copyWith(
                        color: ColorsManager.mainColorDark,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Skincare isn\'t just a cosmetic routine, it\'s an investment in long-term skin health. By following simple, regular steps, you can achieve radiant, healthy skin that reflects youth and vitality.',
              textAlign: TextAlign.center,
              style: TextStyles.bold_15.copyWith(
                color: Color(0xffD9B38D),
              ),
            ),
          ),
          Spacer(),
          UnifiedButton(
            onPressed: () {},
            title: 'Get Started',
            isFullWidth: true,
            color: ColorsManager.mainColor,
            textColor: Colors.white,
            isRounded: true,
            height: 50,
          ),
        ],
      ),
    );
  }
}
