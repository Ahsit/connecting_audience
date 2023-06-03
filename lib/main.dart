import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ricoz_app/Screen/start%20screens/Splash_Screen.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
      home: const SplashScreen(),
    );
  }
}
