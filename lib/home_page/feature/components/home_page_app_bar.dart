import 'package:flutter/material.dart';
import 'package:gestion_budget/home_page/feature/components/date_picker.dart';
import '../../../utils/utils.dart';
import 'package:unicons/unicons.dart';

class HomePageAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: white,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              UniconsLine.bars,
            ),
            color: black,
          ),
          const DatePicker(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              UniconsLine.setting,
            ),
            color: black,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
