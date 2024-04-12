part of 'bottom_nav_bar_bloc.dart';

abstract class BottomNavBarState {
  final int tabIndex;

  BottomNavBarState({required this.tabIndex});
}

final class BottomNavBarInitial extends BottomNavBarState {
  BottomNavBarInitial({required super.tabIndex});
}
