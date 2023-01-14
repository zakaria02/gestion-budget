import 'package:flutter/material.dart';
import '../../../utils/utils.dart';
import 'package:unicons/unicons.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            UniconsLine.angle_left_b,
          ),
          color: black,
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            surfaceTintColor: Colors.grey,
          ),
          child: const Text(
            "JUNUARY 2023",
            style: body,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            UniconsLine.angle_right_b,
          ),
          color: black,
        ),
      ],
    );
  }
}
