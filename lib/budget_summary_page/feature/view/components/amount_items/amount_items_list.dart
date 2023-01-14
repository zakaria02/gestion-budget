import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:gestion_budget/budget_summary_page/budget_summary_utils/budget_summary_utils.dart';
import 'package:gestion_budget/utils/utils.dart';
import 'amount_item.dart';

class AmountItemsList extends StatelessWidget {
  const AmountItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        AmountItem(amount: BudgetSummaryMocks.balance),
        const ItemsDash(),
        AmountItem(amount: BudgetSummaryMocks.income),
        const ItemsDash(),
        AmountItem(amount: BudgetSummaryMocks.expenses),
      ],
    );
  }
}

class ItemsDash extends StatelessWidget {
  const ItemsDash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Dash(
      direction: Axis.vertical,
      dashLength: 5,
      length: 30,
      dashColor: black,
    );
  }
}