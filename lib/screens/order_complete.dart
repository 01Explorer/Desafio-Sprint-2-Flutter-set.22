import 'package:desafio_sprint2/components/main_button.dart';
import 'package:desafio_sprint2/providers/initial_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderComplete extends StatelessWidget {
  const OrderComplete({super.key});
  final String imagePath = 'assets/images/order_complete.png';
  final String mainMessage = 'Order Taken';
  final String subMessage =
      'Your order have been taken and is\nbeing attended to';

  @override
  Widget build(BuildContext context) {
    final InitialState standard = Provider.of<InitialState>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 164,
              height: 164,
              child: Image.asset(imagePath),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 2),
              child: Text(
                mainMessage,
                style: const TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
            Text(
              subMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromRGBO(17, 17, 17, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 56, bottom: 24),
              child: SizedBox(
                width: 208,
                child: MainButton(
                  message: 'Track Order',
                  destination: 'home',
                  args: standard.consumerName,
                  weight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              width: 183,
              child: MainButton(
                message: 'Continue shopping',
                destination: 'home',
                args: standard.consumerName,
                color: const Color.fromRGBO(252, 246, 240, 1),
                textColor: const Color.fromRGBO(240, 134, 38, 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
