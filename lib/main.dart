import 'package:flutter/material.dart';
import 'package:ricoz_app/Screen/start%20screens/Splash_Screen.dart';
import 'package:ricoz_app/Services/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ricoz',
      theme: ThemeData.light(useMaterial3: false).copyWith(
        scaffoldBackgroundColor: Pallete.whiteColor,
        appBarTheme: const AppBarTheme(backgroundColor: Pallete.whiteColor),
      ),
      home: SplashScreen(),
    );
  }
}
