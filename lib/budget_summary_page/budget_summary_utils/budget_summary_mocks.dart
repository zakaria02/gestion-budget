import '../../utils/utils.dart' as utils;
import '../feature/model/amount.dart';

class BudgetSummaryMocks {
  static Amount balance = Amount("BALANCE", 100.0);
  static Amount income = Amount(utils.income.toUpperCase(), 130.0);
  static Amount expenses = Amount(utils.expenses.toUpperCase(), 160.0);
}
