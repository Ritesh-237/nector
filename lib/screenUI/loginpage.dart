import 'package:flutter/material.dart';
import 'package:nector/screenUI/navigator.dart';
import 'package:nector/utility/images.dart';
import 'package:nector/utility/screen_util.dart';

class LogInPage extends StatefulWidget {
  static const routeName = '/LogInPage';
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

TextEditingController phonecontroller = TextEditingController();

class _LogInPageState extends State<LogInPage> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    ScreenUtil.init();
  }

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
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  maxLength: 10,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    counterText: "",
                    labelText: "Phone Number",
                    hintText: "Enter your Phone Number",
                    prefixText: "+91",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return "Please enter your password";
                  //   } else if (value.length < 6) {
                  //     return "Password must be at least 6 characters";
                  //   }
                  //   return null;
                  // },
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your password";
                    } else if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),
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
                  Navigator.pushNamed(context, RootNavigator.routeName);
                },
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.g_mobiledata,
                        color: Colors.white,
                        size: 60,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Continue with Google",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RootNavigator.routeName);
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
                      size: 40,
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
