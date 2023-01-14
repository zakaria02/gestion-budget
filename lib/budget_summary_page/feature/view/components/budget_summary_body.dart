import 'package:flutter/material.dart';
import 'no_data.dart';
import 'amount_items/amount_items_list.dart';
import '../../../../utils/utils.dart';
import '../../../budget_summary_utils/budget_summary_utils.dart';

class BudgetSummaryBody extends StatelessWidget {
  const BudgetSummaryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(mainPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 30,
          ),
          Text(
            title,
            style: h1,
          ),
          SizedBox(
            height: 30,
          ),
          AmountItemsList(),
          SizedBox(
            height: 30,
          ),
          Text("Income", style: h1),
          SizedBox(
            height: 30,
          ),
          NoData(
            isIncome: true,
          ),
          SizedBox(
            height: 30,
          ),
          Text("Expenses", style: h1),
          SizedBox(
            height: 30,
          ),
          NoData(
            isIncome: false,
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
