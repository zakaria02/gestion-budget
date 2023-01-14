import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import '../../../../../utils/utils.dart';
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
          height: 3,
        ),
        const ItemsDash(),
        const SizedBox(
          height: 8,
        ),
        AutoSizeText(
          "\$ ${amount.value}",
          style: amountValueStyle,
        ),
      ],
    );
  }
}

class ItemsDash extends StatelessWidget {
  const ItemsDash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Dash(
      direction: Axis.horizontal,
      dashLength: 5,
      length: 80,
      dashColor: black,
    );
  }
}
