import 'package:flutter/material.dart';

class Settings extends ChangeNotifier {
  double width = 0;
  double height = 0;

  void getSizes(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}
