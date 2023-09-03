import 'package:flutter/material.dart';
import 'package:messageme_app/constants/assets.dart';
import 'package:messageme_app/constants/colors.dart';
import 'package:messageme_app/constants/texts.dart';
import 'package:messageme_app/widgets/my_button.dart';
import 'package:messageme_app/widgets/my_text_field.dart';

class RegistrationScreen extends StatefulWidget {
  static const String nameRoute = "register_screen";
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
            Container(
              height: 180,
              child: Image.asset(AppAssets.logo),
            ),
            SizedBox(height: 50),
            MyTextField(
              hintText: AppTexts.hintTextEmail,
              onChanged: (value) {},
            ),
            SizedBox(height: 8),
            MyTextField(
              hintText: AppTexts.hintTextPassword,
              onChanged: (value) {},
            ),
            SizedBox(height: 10),
            MyButton(
              color: AppColors.blue[800]!,
              title: AppTexts.register,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
