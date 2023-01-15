import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../business/size/size_cubit.dart';
import 'no_data.dart';
import 'amount_items/amount_items_list.dart';
import '../../../../utils/utils.dart';
import '../../../budget_summary_utils/budget_summary_utils.dart';

// ignore: must_be_immutable
class BudgetSummaryBody extends StatelessWidget {
  BudgetSummaryBody({super.key});

  late double height;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SizeCubit, SizeState>(
      builder: (context, sizeState) {
        height = sizeState.height * 0.04;
        return Padding(
          padding: const EdgeInsets.all(mainPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height,
              ),
              const Text(
                title,
                style: h1,
              ),
              SizedBox(
                height: height,
              ),
              const AmountItemsList(),
              SizedBox(
                height: height,
              ),
              const Text(income, style: h1),
              SizedBox(
                height: height,
              ),
              const NoData(
                isIncome: true,
              ),
              SizedBox(
                height: height,
              ),
              const Text(expenses, style: h1),
              SizedBox(
                height: height,
              ),
              const NoData(
                isIncome: false,
              ),
              SizedBox(
                height: height,
              ),
            ],
          ),
        );
      },
    );
  }
}
