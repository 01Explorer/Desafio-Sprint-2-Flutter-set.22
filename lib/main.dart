import 'package:desafio_sprint2/models/food.dart';
import 'package:desafio_sprint2/providers/configs.dart';
import 'package:desafio_sprint2/providers/initial_app.dart';
import 'package:desafio_sprint2/screens/add_basket.dart';
import 'package:desafio_sprint2/screens/order_complete.dart';
import 'package:desafio_sprint2/screens/order_list.dart';
import 'package:desafio_sprint2/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Provider.debugCheckInvalidValueType = null;
    return MultiProvider(
      providers: [
        Provider<Settings>(create: (_) => Settings()),
        Provider<InitialState>(create: (_) => InitialState()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'TT Norms Pro',
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: const Color.fromRGBO(39, 33, 77, 1),
                displayColor: const Color.fromRGBO(39, 33, 77, 1),
              ),
        ),
        home: AddToBasket(
          item: Food(
              name: 'mango',
              price: 2000,
              imagePath: 'assets/images/quinoa-and-red-fruit-salad.png',
              message:
                  'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
              ingredients: [
                'Red Quinoa',
                'Lime',
                'Honey',
                'Blueberries',
                'Mango',
                'Strawberries',
                'Fresh Mint',
              ]),
        ),
      ),
    );
  }
}
