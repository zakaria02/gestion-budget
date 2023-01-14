import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../../budget_summary_utils/budget_summary_utils.dart';
import '../../../model/amount.dart';

class AmountItem extends StatelessWidget {
  final Amount amount;
  const AmountItem({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          amount.name,
          style: amountTitleStyle,
        ),
        const SizedBox(
          height: 5,
        ),
        AutoSizeText(
          "\$ ${amount.value}",
          style: amountValueStyle,
        ),
      ],
    );
  }
}
