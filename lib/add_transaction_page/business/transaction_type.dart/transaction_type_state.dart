part of 'transaction_type_cubit.dart';

class TransactionTypeState extends Equatable {
  final TransactionEnum transactionType;

  const TransactionTypeState(this.transactionType);

  @override
  List<Object> get props => [transactionType];
}
