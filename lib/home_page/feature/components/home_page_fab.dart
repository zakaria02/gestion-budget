import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_budget/add_transaction_page/feature/model/transaction_enum.dart';
import '../../../add_transaction_page/business/transaction_type.dart/transaction_type_cubit.dart';

class HomePageFAB extends StatelessWidget {
  const HomePageFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionTypeCubit, TransactionTypeState>(
      builder: (context, state) {
        return FloatingActionButton(
          onPressed: () {
            BlocProvider.of<TransactionTypeCubit>(context)
                .getTransactionType(TransactionEnum.expenses);
            Navigator.pushNamed(
              context,
              '/addTransaction',
            );
          },
          backgroundColor: Colors.pink,
          child: const Icon(
            Icons.add,
            size: 25,
          ),
        );
      },
    );
  }
}
