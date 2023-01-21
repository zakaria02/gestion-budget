import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_bloc_observer.dart';
import 'business/business.dart';
import 'home_page/home_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // This will let us observe any change that is happening in the Bloc
  Bloc.observer = AppBlocObserver();
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
        BlocProvider<AuthenticationBloc>(
          create: (context) => AuthenticationBloc(
            AuthenticationRepositoryImpl(),
          )
            // Start Authentification when app start
            ..add(AuthenticationStarted()),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePageView(),
          //"/addTransaction": (context) => const AddTransactionView()
        },
      ),
    );
  }
}
