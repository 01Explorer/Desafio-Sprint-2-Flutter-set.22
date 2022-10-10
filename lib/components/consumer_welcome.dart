import 'package:flutter/material.dart';

class ConsumerWelcome extends StatelessWidget {
  const ConsumerWelcome({
    Key? key,
    required this.consumerName,
  }) : super(key: key);

  final String consumerName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/home_bars.png',
          width: 22,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Welcome, $consumerName.',
          ),
        ),
      ],
    );
  }
}
