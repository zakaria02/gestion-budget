import 'package:flutter/material.dart';
import 'amount_items/amount_items_list.dart';
import '../../../../utils/utils.dart';
import '../../../budget_summary_utils/budget_summary_utils.dart';

class BudgetSummaryBody extends StatelessWidget {
  const BudgetSummaryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(mainPadding),
      child: ListView(
        shrinkWrap: true,
        children: const [
          Text(
            title,
            style: h1,
          ),
          SizedBox(
            height: 30,
          ),
          AmountItemsList(),
        ],
      ),
    );
  }
}
