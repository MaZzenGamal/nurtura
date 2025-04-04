part of 'bot_nav_bar_cubit.dart';

@immutable
sealed class BotNavBarState {}

final class BotNavBarInitial extends BotNavBarState {}

class BotNavChangeState extends BotNavBarState {}
