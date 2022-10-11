import 'package:desafio_sprint2/components/blue_currency_text.dart';
import 'package:desafio_sprint2/components/go_back_button.dart';
import 'package:desafio_sprint2/components/main_button.dart';
import 'package:desafio_sprint2/components/orders_list.dart';
import 'package:desafio_sprint2/providers/initial_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({Key? key}) : super(key: key);

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  @override
  Widget build(BuildContext context) {
    final InitialState standard = Provider.of<InitialState>(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 164, 81, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 68),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 36),
              child: Stack(
                children: const [
                  GoBackButton(),
                  Center(
                    child: Text(
                      'My Basket',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  )
                ],
              ),
            ),
            OrdersList(),
            Expanded(
              child: Container(
                color: const Color.fromRGBO(250, 250, 250, 1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 56,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: Text(
                                'Total',
                                style: TextStyle(
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            BlueCurrencyText(
                              value: standard.sumTotal(),
                            )
                          ],
                        ),
                      ),
                      Visibility(
                        visible: standard.sumTotal() > 0 ? true : false,
                        child: const SizedBox(
                          width: 199,
                          child: MainButton(
                            message: 'Checkout',
                            destination: 'order-complete',
                            weight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
