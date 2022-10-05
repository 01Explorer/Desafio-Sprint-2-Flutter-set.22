import 'package:desafio_sprint2/components/welcome_auth_button.dart';
import 'package:desafio_sprint2/components/welcome_auth_image.dart';
import 'package:desafio_sprint2/screens/authentication.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerImage(
            height: height,
            width: width,
            imagePath: 'assets/images/welcome_basket.png',
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, bottom: 8, left: 24, right: 88),
            child: Text(
              'Get The Freshest Fruit Salad Combo',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 70),
            child: Text(
              'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(93, 87, 126, 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 80),
            child: WelcomeAuthenticationButton(
              width: width,
              message: 'Let\'s Continue',
              destination: const AuthenticationScreen(),
            ),
          )
        ],
      ),
    );
  }
}
