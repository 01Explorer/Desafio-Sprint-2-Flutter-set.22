import 'package:desafio_sprint2/screens/splash.dart';
import 'package:flutter/material.dart';

class WelcomeAuthenticationButton extends StatelessWidget {
  final String message;
  const WelcomeAuthenticationButton({
    Key? key,
    required this.width,
    required this.message,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        ),
      ),
      child: Container(
        width: width * 0.89,
        height: 56,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 164, 81, 1),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            message,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
