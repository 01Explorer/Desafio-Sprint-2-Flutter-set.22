import 'package:flutter/material.dart';

class BlueCurrencyText extends StatelessWidget {
  final double imageHeight;
  final FontWeight weight;
  final double textSize;
  final double value;
  const BlueCurrencyText({
    Key? key,
    this.imageHeight = 20,
    this.weight = FontWeight.w500,
    this.textSize = 24,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Image.asset(
            'assets/images/currency_blue.png',
            height: imageHeight,
          ),
        ),
        Text(
          '$value',
          style: TextStyle(
            fontSize: textSize,
            fontWeight: weight,
          ),
        )
      ],
    );
  }
}
