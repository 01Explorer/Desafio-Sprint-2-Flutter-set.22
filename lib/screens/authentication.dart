import 'package:desafio_sprint2/components/welcome_auth_button.dart';
import 'package:desafio_sprint2/components/welcome_auth_image.dart';
import 'package:desafio_sprint2/screens/splash.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _textController = TextEditingController();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContainerImage(
              height: height,
              width: width,
              imagePath: 'assets/images/authentication_basket.png',
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, bottom: 8, left: 24, right: 88),
              child: Text(
                'What is your firstname?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 17),
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: 'Chris',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(194, 189, 189, 0.7),
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(247, 245, 245, 1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 58),
              child: WelcomeAuthenticationButton(
                width: width,
                message: 'Start Ordering',
              ),
            )
          ],
        ),
      ),
    );
  }
}
