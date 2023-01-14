import 'package:flutter/material.dart';
import '../../../utils/utils.dart';
import 'components/budget_summary_body.dart';

class BudgetSummaryPageView extends StatelessWidget {
  const BudgetSummaryPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: white,
      body: BudgetSummaryBody(),
    );
  }
}
