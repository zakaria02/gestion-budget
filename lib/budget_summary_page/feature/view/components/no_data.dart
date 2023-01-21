import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../../../budget_summary_utils/budget_summary_utils.dart';
import '../../../../utils/utils.dart';
import 'package:unicons/unicons.dart';

class NoData extends StatelessWidget {
  final bool isIncome;
  const NoData({super.key, required this.isIncome});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: innerPadding),
        child: DottedBorder(
          color: Colors.grey,
          strokeWidth: 1,
          radius: const Radius.circular(18),
          borderType: BorderType.RRect,
          dashPattern: const [6, 9],
          child: Padding(
            padding: const EdgeInsets.only(
              right: mainPadding,
              top: 5,
              bottom: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/addTransaction",
                    );
                  },
                  color: isIncome ? incomeColor : expensesColor,
                  textColor: Colors.white,
                  shape: const CircleBorder(),
                  child: const Icon(
                    UniconsLine.plus,
                    size: 25,
                  ),
                ),
                Flexible(
                  child: Text(
                    "You don't have any ${isIncome ? "income" : "expenses"} for this "
                    "month. Tap to add one.",
                    style: body,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
