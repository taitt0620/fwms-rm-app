part of 'bottom_nav_bar_bloc.dart';

abstract class BottomNavBarEvent {}

class TabChanged extends BottomNavBarEvent {
  final int tabIndex;

  TabChanged({required this.tabIndex});
}
