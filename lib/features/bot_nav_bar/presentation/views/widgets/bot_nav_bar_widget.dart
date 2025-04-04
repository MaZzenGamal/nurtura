import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nurtura/core/theme/colors.dart';
import 'package:nurtura/features/bot_nav_bar/presentation/controller/bot_nav_bar_cubit.dart';
import 'package:nurtura/features/bot_nav_bar/presentation/controller/bot_nav_bar_cubit.dart';

class BotNavBarWidget extends StatelessWidget {
  const BotNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BotNavBarCubit, BotNavBarState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: BotNavBarCubit
              .get(context)
              .currentIndex,
          onTap: (value) {
            BotNavBarCubit.get(context).changeBottomNav(value);
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
            color: ColorsManager.mainColorLight,
            fontWeight: FontWeight.bold,
          ),
          selectedItemColor: ColorsManager.mainColorDark,
          unselectedItemColor: ColorsManager.mainColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
