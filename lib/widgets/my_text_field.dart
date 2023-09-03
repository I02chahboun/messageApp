import 'package:flutter/material.dart';
import 'package:messageme_app/constants/colors.dart';
import 'package:messageme_app/constants/texts.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final Function(String)? onChanged;

  MyTextField({required this.hintText, required this.onChanged});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    final bool isPassword = widget.hintText == AppTexts.hintTextPassword;
    return TextField(
      obscureText: isObscure(),
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: widget.hintText,
        contentPadding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        suffixIcon: isPassword
            ? IconButton(
                highlightColor: Colors.transparent,
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off))
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }

  bool isObscure() {
    return widget.hintText == AppTexts.hintTextPassword ? isVisible : false;
  }
}
