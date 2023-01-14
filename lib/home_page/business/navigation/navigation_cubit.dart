import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'constants/nav_bar_items.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(NavbarItem.summary, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.summary:
        emit(const NavigationState(NavbarItem.summary, 0));
        break;
      case NavbarItem.details:
        emit(const NavigationState(NavbarItem.details, 1));
        break;
    }
  }
}
