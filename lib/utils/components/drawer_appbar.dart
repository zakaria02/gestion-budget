import 'package:flutter/material.dart';

class DrawerAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Widget child;
  const DrawerAppBar({
    super.key,
    required this.scaffoldKey,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () => scaffoldKey.currentState!.openDrawer(),
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 40,
          ),
        ),
        const SizedBox(
          width: 70,
        ),
        child
      ],
    );
  }
}
