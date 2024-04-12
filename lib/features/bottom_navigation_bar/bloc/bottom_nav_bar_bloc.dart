import 'package:bloc/bloc.dart';

part 'bottom_nav_bar_event.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarBloc extends Bloc<BottomNavBarEvent, BottomNavBarState> {
  BottomNavBarBloc() : super(BottomNavBarInitial(tabIndex: 0)) {
    on<BottomNavBarEvent>((event, emit) {
      if (event is TabChanged) {
        emit(BottomNavBarInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
