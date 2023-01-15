import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'add_transaction_page/business/transaction_type.dart/transaction_type_cubit.dart';
import 'add_transaction_page/feature/add_tansaction_page_view.dart';
import 'home_page/business/date_picker/date_picker_cubit.dart';
import 'business/size/size_cubit.dart';
import 'home_page/business/navigation/navigation.dart';
import 'home_page/home_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        ),
        BlocProvider<TransactionTypeCubit>(
          create: (context) => TransactionTypeCubit(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePageView(),
          "/addTransaction": (context) => const AddTransactionView()
        },
      ),
    );
  }
}
