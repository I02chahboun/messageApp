import 'package:flutter/material.dart';
import 'package:messageme_app/constants/assets.dart';
import 'package:messageme_app/constants/colors.dart';
import 'package:messageme_app/constants/texts.dart';
import 'package:messageme_app/screens/registration_screen.dart';
import 'package:messageme_app/screens/signin_screen.dart';
import 'package:messageme_app/widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String nameRoute = "welcome_screen";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset(AppAssets.logo),
                ),
                Text(
                  AppTexts.nameApp,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: AppColors.mve,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            MyButton(
              color: AppColors.yellow[900]!,
              title: AppTexts.signIn,
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.nameRoute);
              },
            ),
            MyButton(
              color: AppColors.blue[800]!,
              title: AppTexts.register,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.nameRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
