import 'package:flutter/material.dart';
import 'package:messageme_app/constants/assets.dart';
import 'package:messageme_app/constants/colors.dart';
import 'package:messageme_app/constants/texts.dart';

class ChatScreen extends StatefulWidget {
  static const String nameRoute = "chat_screen";
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.yellow[900],
        title: Row(
          children: [
            Image.asset(AppAssets.logo, height: 25),
            SizedBox(width: 10),
            Text(AppTexts.nameApp)
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // add here logout function
            },
            icon: Icon(Icons.close),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: AppColors.orange,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintText: AppTexts.hintTextMessage,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      AppTexts.send,
                      style: TextStyle(
                        color: AppColors.blue[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
