import 'package:flutter/material.dart';
import 'package:nector/screenUI/mobile_login.dart';
import 'package:nector/screenUI/navigator.dart';
import 'package:nector/utility/extension.dart';
import 'package:nector/utility/images.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

TextEditingController phonecontroller = TextEditingController();

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Image.asset(GroceryImages.signinvegiImage),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Get Your Groceries with nectar",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  controller: phonecontroller,
                  decoration: InputDecoration(
                    prefixIcon: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            "+91",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Icon(Icons.flag)
                      ],
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MobileLogIn(),
                          ));

                      context.push(const MobileLogIn());
                    },
                    child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.green.shade400,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(child: Text("signup")),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RootNavigator(),
                          ));
                    },
                    child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(child: Text("LogIn")),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("or connect with social media"),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RootNavigator()));
                },
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  child: const ListTile(
                    leading: Icon(
                      Icons.g_mobiledata,
                      size: 60,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Continue with google",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RootNavigator(),
                      ));
                },
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(15)),
                  child: const ListTile(
                    leading: Icon(
                      Icons.facebook,
                      size: 50,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Continue with Facebook",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
