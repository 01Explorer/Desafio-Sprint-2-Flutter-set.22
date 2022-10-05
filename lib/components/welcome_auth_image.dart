import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage({
    Key? key,
    required this.height,
    required this.width,
    required this.imagePath,
  }) : super(key: key);

  final double height;
  final double width;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.58,
      width: width,
      color: const Color.fromRGBO(255, 164, 81, 1),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 131, bottom: 34, left: 35, right: 39),
        child: Image.asset(
          imagePath,
        ),
      ),
    );
  }
}
