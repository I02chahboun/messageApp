import 'package:flutter/material.dart';
import 'package:messageme_app/constants/colors.dart';
import 'package:messageme_app/screens/registration_screen.dart';
import 'package:messageme_app/screens/signin_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Message App',
      theme: ThemeData(
        primarySwatch: AppColors.blue,
      ),
      initialRoute: WelcomeScreen.nameRoute,
      routes: {
        WelcomeScreen.nameRoute: (context) => WelcomeScreen(),
        SignInScreen.nameRoute: (context) => SignInScreen(),
        RegistrationScreen.nameRoute: (context) => RegistrationScreen(),
      },
    );
  }
}
