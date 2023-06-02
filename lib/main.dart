import 'package:flutter/material.dart';
import 'package:nector/assets/providers/provider.dart';
import 'package:nector/screenUI/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<AddressProvider1>(
        create: (snapshot) => AddressProvider1())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Nector",
      // theme: ThemeData(
      //     bottomSheetTheme: BottomSheetThemeData(
      //         modalBackgroundColor: AppColours.appblack.withOpacity(0.4)
      //         )
      //         ),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
