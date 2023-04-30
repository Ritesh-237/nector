import 'package:flutter/material.dart';
import 'package:nector/screenUI/navigator.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MobileLogIn extends StatefulWidget {
  const MobileLogIn({super.key});

  @override
  State<MobileLogIn> createState() => _MobileLogInState();
}

class _MobileLogInState extends State<MobileLogIn> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_forward_ios),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const RootNavigator()));
          }),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 14.0),
            child: Text(
              "Enter your 6-digit code",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: PinCodeTextField(
                // enabled: false,
                appContext: context,
                autoDisposeControllers: false,
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                cursorColor: Colors.black,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    inactiveColor: Colors.red,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    errorBorderColor: Colors.red,
                    activeColor: Colors.green,
                    selectedColor: Colors.green),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.white,
                enableActiveFill: true,
                controller: otpController,
                onCompleted: (v) {},
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
