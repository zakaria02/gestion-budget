import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_page/business/date_picker/date_picker_cubit.dart';
import 'business/size/size_cubit.dart';
import 'home_page/business/navigation/navigation.dart';
import 'home_page/home_page.dart';

void main() {
  runApp(const BudgetApp());
}

class BudgetApp extends StatelessWidget {
  const BudgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(
          create: (context) => NavigationCubit(),
        ),
        BlocProvider<SizeCubit>(
          create: (context) => SizeCubit(),
        ),
        BlocProvider<DatePickerCubit>(
          create: (context) => DatePickerCubit(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: const HomePageView(),
      ),
    );
  }
}
