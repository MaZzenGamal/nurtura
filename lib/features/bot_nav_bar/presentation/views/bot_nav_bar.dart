import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nurtura/features/bot_nav_bar/presentation/controller/bot_nav_bar_cubit.dart';
import 'package:nurtura/features/bot_nav_bar/presentation/views/widgets/bot_nav_bar_widget.dart';

class BotNavBar extends StatelessWidget {
  const BotNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => BotNavBarCubit(),
  child: BlocBuilder<BotNavBarCubit, BotNavBarState>(
      builder: (context, state) {
        return Scaffold(
          key:  BotNavBarCubit.get(context).scaffoldKey,
          body: BotNavBarCubit.get(context)
              .bottomNavScreens[BotNavBarCubit.get(context).currentIndex],
          bottomNavigationBar: BotNavBarWidget(),
        );
      },
    ),
);
  }
}
