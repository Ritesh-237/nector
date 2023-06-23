import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  static const routeName = '/Help';
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          title: const Text(
            "Help",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
            itemCount: 6,
            itemBuilder: ((context, index) => const ExpansionTile_())));
  }
}

class ExpansionTile_ extends StatelessWidget {
  const ExpansionTile_({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ExpansionTile(
          title: Text(
            "What happens when my order is failed",
            style: TextStyle(fontSize: 18),
          ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                  "Comprehension passage is a very important section in English Language Reading Skills. In the comprehension section, an unknown and unseen passage is given on any topic, and candidates are asked to read it and understand well then questions and answers based on it are given to solve using it. It checks the vocabulary, grammatical knowledge, reading skills, and observation of candidates."),
            ),
          ],
        )
      ],
    );
  }
}
