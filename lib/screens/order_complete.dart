import 'package:flutter/material.dart';

class OrderComplete extends StatelessWidget {
  const OrderComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 164,
                height: 164,
                child: Image.asset('assets/images/order_complete.png')),
            const Padding(
              padding: EdgeInsets.only(top: 40, bottom: 2),
              child: Text(
                'Order Taken',
                style: TextStyle(fontSize: 32),
              ),
            ),
            const Text(
              'Your order have been taken and is\nbeing attended to',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(17, 17, 17, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 56, bottom: 24),
              child: GestureDetector(
                child: Container(
                  width: 208,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 164, 81, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Track Order',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                width: 183,
                height: 56,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(252, 246, 240, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Continue shopping',
                    style: TextStyle(
                      color: Color.fromRGBO(240, 134, 38, 1),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
