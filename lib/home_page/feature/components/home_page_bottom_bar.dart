import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unicons/unicons.dart';
import '../../../utils/utils.dart';
import '../../business/navigation/navigation.dart';

class HomePageBottomBar extends StatelessWidget {
  final List<IconData> iconItems = [
    UniconsLine.calender,
    UniconsLine.wallet,
  ];

  HomePageBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
      return AnimatedBottomNavigationBar(
        activeColor: primary,
        splashColor: secondary,
        inactiveColor: Colors.black.withOpacity(0.5),
        icons: iconItems,
        activeIndex: state.index,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        iconSize: 25,
        rightCornerRadius: 10,
        onTap: (index) {
          if (index == 0) {
            BlocProvider.of<NavigationCubit>(context)
                .getNavBarItem(NavbarItem.summary);
          } else if (index == 1) {
            BlocProvider.of<NavigationCubit>(context)
                .getNavBarItem(NavbarItem.details);
          }
        },
      );
    });
  }
}
