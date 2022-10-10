import 'package:flutter/material.dart';

class ImageFloatingButton extends StatelessWidget {
  final String imagePath;
  const ImageFloatingButton({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 48,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Image.asset(imagePath),
        onPressed: () => null,
      ),
    );
  }
}
