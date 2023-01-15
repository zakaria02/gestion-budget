import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/transaction_enum.dart';
import 'add_transaction_app_bar.dart';
import 'options_list_transaction.dart';
import 'package:gestion_budget/utils/utils.dart';
import 'transaction_type.dart';
import '../../../business/size/size_cubit.dart';

// ignore: must_be_immutable
class AddTransactionBody extends StatelessWidget {
  AddTransactionBody({super.key});

  late double height;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SizeCubit, SizeState>(
      builder: (context, sizeState) {
        height = sizeState.height * 0.02;
        return ListView(
          children: [
            const AddTransactionAppBar(),
            SizedBox(
              height: height * 2,
            ),
            TransactionType(),
            SizedBox(
              height: height,
            ),
            const Text(
              "\$0,00",
              style: h1,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height,
            ),
            const OptionsListTransaction(),
          ],
        );
      },
    );
  }
}
