import 'package:flutter/material.dart';
import '../../../utils/utils.dart';
import 'package:unicons/unicons.dart';

class AddTransactionAppBar extends StatelessWidget with PreferredSizeWidget {
  const AddTransactionAppBar({super.key});

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
              UniconsLine.times,
            ),
            color: black,
          ),
          const Text(
            "NEW TRANSACTION",
            style: pageTitle,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Save",
              style: appBarButton,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
