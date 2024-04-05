import 'package:flutter/material.dart';
import 'package:title_chain/screens/dashboard_screen/DashboardScreen.dart';
import 'package:title_chain/screens/login_screen/LoginScreen.dart';
import 'package:title_chain/screens/otp_screen/OtpScreen.dart';
import 'package:title_chain/screens/signup_screen/SignupScreen.dart';
import 'package:title_chain/screens/splash_screen/SplashScreen.dart';
import 'package:title_chain/screens/welcome_screen/WelcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      // home: WelcomeScreen(),
      // home: LoginScreen()
      // home: SignupScreen()
      // home: OtpScreen()
      // home: DashboardScreen(),
    );
  }
}

