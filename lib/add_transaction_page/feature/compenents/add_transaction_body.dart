import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        height = sizeState.height * 0.04;
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height,
            ),
            const TransactionType()
          ],
        );
      },
    );
  }
}
