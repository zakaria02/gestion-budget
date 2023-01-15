import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business/size/size_cubit.dart';
import 'components/components.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SizeCubit, SizeState>(builder: (context, sizeState) {
      BlocProvider.of<SizeCubit>(context).getSize(MediaQuery.of(context).size);
      return Scaffold(
        appBar: const HomePageAppBar(),
        body: const HomePageBody(),
        bottomNavigationBar: HomePageBottomBar(),
        floatingActionButton: const HomePageFAB(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
    });
  }
}
