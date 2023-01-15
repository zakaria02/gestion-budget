import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../add_transaction_page/business/transaction_type.dart/transaction_type_cubit.dart';
import '../../../utils/utils.dart';
import '../../../budget_summary_page/budget_summary_utils/budget_summary_utils.dart';
import '../model/transaction_enum.dart';
import 'transaction_outlined_button.dart';
import 'package:unicons/unicons.dart';

class TransactionType extends StatelessWidget {
  const TransactionType({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionTypeCubit, TransactionTypeState>(
      builder: (context, transactionTypeState) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            TransactionOutlinedButton(
              icon: UniconsLine.shopping_cart,
              color: expensesColor,
              text: expenses.toUpperCase(),
              isSelected: transactionTypeState.transactionType ==
                  TransactionEnum.expenses,
              onPress: () {
                BlocProvider.of<TransactionTypeCubit>(context)
                    .getTransactionType(TransactionEnum.expenses);
              },
            ),
            const SizedBox(
              width: 10,
            ),
            TransactionOutlinedButton(
              icon: UniconsLine.usd_circle,
              color: incomeColor,
              text: income.toUpperCase(),
              isSelected: transactionTypeState.transactionType ==
                  TransactionEnum.income,
              onPress: () {
                BlocProvider.of<TransactionTypeCubit>(context)
                    .getTransactionType(TransactionEnum.income);
              },
            )
          ],
        );
      },
    );
  }
}
