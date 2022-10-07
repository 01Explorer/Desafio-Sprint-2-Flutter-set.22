import 'package:desafio_sprint2/components/welcome_auth_button.dart';
import 'package:desafio_sprint2/components/welcome_auth_image.dart';
import 'package:desafio_sprint2/providers/configs.dart';
import 'package:desafio_sprint2/screens/authentication.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatelessWidget {
  final String mainMessage = 'Get The Freshest Fruit Salad Combo';
  final String subMessage =
      'We deliver the best and freshest fruit salad in town. Order for a combo today!!!';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Settings settings = Provider.of<Settings>(context);
    settings.getSizes(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerImage(
            height: settings.height,
            width: settings.width,
            imagePath: 'assets/images/welcome_basket.png',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 8, left: 24),
            child: Text(
              mainMessage,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 70),
            child: Text(
              subMessage,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(93, 87, 126, 1),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 80),
            child: WelcomeAuthenticationButton(
              message: 'Let\'s Continue',
              destination: AuthenticationScreen(),
            ),
          )
        ],
      ),
    );
  }
}
