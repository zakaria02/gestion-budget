import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../budget_details_page/budget_details_page.dart';
import '../../../budget_summary_page/budget_summary_page.dart';
import '../../business/navigation/navigation.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
      if (state.navbarItem == NavbarItem.summary) {
        return const BudgetSummaryPageView();
      } else {
        return const BudgetDetailsPageView();
      }
    });
  }
}
