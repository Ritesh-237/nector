// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:nector/screenUI/welcome.dart';
import 'package:nector/utility/colors.dart';

class Splash extends StatefulWidget {
  static const routeName = '/Splash';
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    goToHomepage();
    super.initState();
  }

  goToHomepage() async {
    await Future.delayed(const Duration(seconds: 2));

    Navigator.pushNamed(context, Welcome.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.primarycolour,
      body: Center(child: Image.asset("lib/assets/images/splash.png")),
    );
  }
}
