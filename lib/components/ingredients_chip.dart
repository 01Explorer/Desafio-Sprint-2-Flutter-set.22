import 'package:desafio_sprint2/models/food.dart';
import 'package:flutter/material.dart';

class IngredientsChip extends StatelessWidget {
  const IngredientsChip({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Food item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color.fromRGBO(243, 243, 243, 1),
          ),
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 6,
            runSpacing: -8,
            children: [
              for (var ingredient in item.ingredients)
                Chip(
                  labelPadding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                  backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
                  label: Text(ingredient),
                  labelStyle: const TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(64, 62, 62, 1),
                      fontWeight: FontWeight.w400),
                ),
            ],
          )),
    );
  }
}
