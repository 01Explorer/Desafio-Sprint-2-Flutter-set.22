import 'package:desafio_sprint2/models/food.dart';
import 'package:desafio_sprint2/screens/add_basket.dart';
import 'package:desafio_sprint2/screens/authentication.dart';
import 'package:desafio_sprint2/screens/home.dart';
import 'package:desafio_sprint2/screens/order_complete.dart';
import 'package:desafio_sprint2/screens/order_list.dart';
import 'package:desafio_sprint2/screens/splash.dart';
import 'package:desafio_sprint2/screens/welcome.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case 'splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case 'welcome':
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case 'authentication':
        return MaterialPageRoute(builder: (_) => const AuthenticationScreen());
      case 'home':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => HomeScreen(
              consumerName: args,
            ),
          );
        }
        return _errorRoute();

      case 'add-basket':
        if (args is Food) {
          return MaterialPageRoute(
            builder: (_) => AddToBasket(
              item: args,
            ),
          );
        }
        return _errorRoute();
      case 'order-list':
        return MaterialPageRoute(builder: (_) => const OrderListScreen());
      case 'order-complete':
        return MaterialPageRoute(builder: (_) => const OrderComplete());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 164, 81, 1),
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
