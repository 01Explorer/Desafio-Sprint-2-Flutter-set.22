import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, 'welcome'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(255, 255, 255, 1),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Image.asset(
          'assets/images/splash_icon.png',
        ),
      ),
    );
  }
}
