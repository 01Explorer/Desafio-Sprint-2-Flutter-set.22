import 'package:desafio_sprint2/components/combo_food.dart';
import 'package:desafio_sprint2/models/food.dart';
import 'package:desafio_sprint2/screens/add_basket.dart';
import 'package:desafio_sprint2/screens/home.dart';
import 'package:desafio_sprint2/screens/order_complete.dart';
import 'package:desafio_sprint2/screens/order_list.dart';
import 'package:desafio_sprint2/screens/splash.dart';
import 'package:desafio_sprint2/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'TT Norms Pro',
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: const Color.fromRGBO(39, 33, 77, 1),
              displayColor: const Color.fromRGBO(39, 33, 77, 1),
            ),
        primarySwatch: Colors.blue,
      ),
      home: OrderComplete(),
    );
  }
}
