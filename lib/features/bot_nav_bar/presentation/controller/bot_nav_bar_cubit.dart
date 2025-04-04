import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:nurtura/features/camera/presentation/views/camera_screen.dart';
import 'package:nurtura/features/home/presentation/views/home_screen.dart';
import 'package:nurtura/features/profile/presentation/views/profile_screen.dart';

part 'bot_nav_bar_state.dart';

class BotNavBarCubit extends Cubit<BotNavBarState> {
  BotNavBarCubit() : super(BotNavBarInitial());

  static BotNavBarCubit get(context) => BlocProvider.of(context);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;

  List<Widget> bottomNavScreens = const [
    HomeScreen(),
    CameraScreen(),
    ProfileScreen(),
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(BotNavChangeState());
  }
}
