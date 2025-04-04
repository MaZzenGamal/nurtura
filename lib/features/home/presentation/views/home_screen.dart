import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurtura/core/theme/colors.dart';
import 'package:nurtura/core/theme/styles.dart';
import 'package:nurtura/features/home/presentation/views/home_screen_body.dart';
import 'package:nurtura/generated/assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('NURTURA', style: TextStyles.bold_15),
        backgroundColor: ColorsManager.backgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
                onTap: (){},
                child: SvgPicture.asset(Assets.iconsCart)),
          ),
        ],
      ),
      body: HomeScreenBody(),
    );
  }
}
