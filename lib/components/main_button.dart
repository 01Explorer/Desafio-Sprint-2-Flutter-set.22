import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String message;
  final Widget destination;
  final Color color;
  final Color textColor;
  final double textSize;
  final FontWeight weight;
  const MainButton({
    Key? key,
    required this.message,
    required this.destination,
    this.color = const Color.fromRGBO(255, 164, 81, 1),
    this.textColor = Colors.white,
    this.weight = FontWeight.w400,
    this.textSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => destination,
        ),
      ),
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            message,
            style: TextStyle(
              fontWeight: weight,
              fontSize: textSize,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
