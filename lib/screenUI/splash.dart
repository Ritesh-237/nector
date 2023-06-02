import 'package:flutter/material.dart';
import 'package:nector/screenUI/welcome.dart';
import 'package:nector/utility/colors.dart';

class Splash extends StatefulWidget {
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

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Welcome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.primarycolour,
      body: Center(child: Image.asset("lib/assets/images/splash.png")),
    );
  }
}
