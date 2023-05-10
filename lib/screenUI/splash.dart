import 'package:flutter/material.dart';
import 'package:nector/screenUI/welcome.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/screen_util.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    goToHomePage();
    ScreenUtil.init();
  }

  goToHomePage() async {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Welcome(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.primarycolour,
      body: Center(child: Image.asset("lib/assets/images/splash.png")),
    );
  }
}
