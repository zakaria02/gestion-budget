import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../feature/model/transaction_enum.dart';

part 'transaction_type_state.dart';

class TransactionTypeCubit extends Cubit<TransactionTypeState> {
  TransactionTypeCubit()
      : super(const TransactionTypeState(TransactionEnum.expenses));

  void getTransactionType(TransactionEnum transactionType) {
    emit(TransactionTypeState(transactionType));
  }
}
