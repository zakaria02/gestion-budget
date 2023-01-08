import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/utils.dart';

class HomePageScaffold extends StatelessWidget {
  HomePageScaffold({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const BudgetAppDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              DrawerAppBar(
                scaffoldKey: _scaffoldKey,
                child: const Text(
                  appName,
                  style: h1,
                ),
              ),
              SvgPicture.asset(
                welcomeSVG,
                height: 300,
                width: 300,
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Bienvenue dans notre application qui vous permettera "
                "de gérer votre argent et de faire plus d'économie",
                style: h3,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              RoundedButton(
                text: "CALCULER MES ECONOMIES",
                press: () {},
              ),
              RoundedButton(
                text: "COMMENCER",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
