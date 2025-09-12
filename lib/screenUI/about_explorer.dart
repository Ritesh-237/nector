import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/images.dart';

class About extends StatefulWidget {
  static const routeName = '/About';
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Stack(
        children: [
          Center(
              child: Image.asset(
            "lib/assets/images/onboarding.png",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          )),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: AppColours.primarycolour.withOpacity(0.50)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 39,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                Center(
                  child: Image.asset(
                    GroceryImages.splashImage,
                    height: 90,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    '"WE ARE SWEET AND WE GET THE JOB DONE"',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    "Comprehension passage is a very important section in English Language Reading Skills. In the comprehension section, an unknown and unseen passage is given on any topic, and candidates are asked to read it and understand well then questions and answers based on it are given to solve using it. It checks the vocabulary, grammatical knowledge, reading skills, and observation of candidates.",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    "Comprehension passage is a very important section in English Language Reading Skills. In the comprehension section, an unknown and unseen passage is given on any topic, and candidates are asked to read it and understand well then questions and answers based on it are given to solve using it. It checks the vocabulary, grammatical knowledge, reading skills, and observation of candidates.",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
