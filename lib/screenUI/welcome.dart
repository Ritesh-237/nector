import 'package:flutter/material.dart';
import 'package:nector/screenUI/loginpage.dart';
import 'package:nector/utility/colors.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.primarycolour,
      body: Stack(
        children: [
          Image.asset(
            "lib/assets/images/onboarding.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 520,
                ),
                Image.asset("lib/assets/images/onboarding_carrot.png"),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome to our store",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 50,
                      color: AppColours.appwhite,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Get your groceries in as fast as one hour",
                  style: TextStyle(color: AppColours.appwhite, fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInPage(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        color: AppColours.primarycolour.withOpacity(0.60),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: AppColours.primarycolour, width: 3)),
                    child: const Center(
                      child: Text(
                        "Get started",
                        style:
                            TextStyle(color: AppColours.appwhite, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
