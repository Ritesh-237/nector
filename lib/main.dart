import 'package:flutter/material.dart';
import 'package:nector/assets/providers/provider.dart';
import 'package:nector/screenUI/splash.dart';
import 'package:nector/utility/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    Provider(create: (_) => AddressProvider1()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nector",
      theme: ThemeData(
          bottomSheetTheme: BottomSheetThemeData(
              modalBackgroundColor: AppColours.appblack.withOpacity(0.4))),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
