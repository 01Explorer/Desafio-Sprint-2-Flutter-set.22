import 'package:flutter/material.dart';

class AddRemoveButtonBasket extends StatelessWidget {
  final String imagePath;
  final double contWidth;
  final double contHeight;

  const AddRemoveButtonBasket({
    Key? key,
    required this.imagePath,
    this.contHeight = 24,
    this.contWidth = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: contWidth,
      height: contHeight,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 242, 231, 1),
        shape: BoxShape.circle,
      ),
      child: Image.asset(imagePath),
    );
  }
}
