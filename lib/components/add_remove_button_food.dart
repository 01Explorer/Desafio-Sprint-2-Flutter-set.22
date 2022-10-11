import 'package:desafio_sprint2/models/food.dart';
import 'package:desafio_sprint2/providers/initial_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddRemoveButton extends StatelessWidget {
  final String imagePath;
  final double contWidth;
  final double contHeight;
  final Food item;
  const AddRemoveButton({
    Key? key,
    required this.imagePath,
    this.contHeight = 24,
    this.contWidth = 24,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SnackBar snackBar = SnackBar(
      content: Text(imagePath.contains('plus')
          ? 'Item added to the basket'
          : 'Item removed from the basket'),
      duration: const Duration(milliseconds: 500),
    );
    final InitialState standard = Provider.of<InitialState>(context);
    return InkWell(
      onTap: () {
        if (imagePath.contains('plus')) {
          standard.addBasket(item);
        } else {
          standard.removeBasket(item);
        }
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        width: contWidth,
        height: contHeight,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 242, 231, 1),
          shape: BoxShape.circle,
        ),
        child: Image.asset(imagePath),
      ),
    );
  }
}
