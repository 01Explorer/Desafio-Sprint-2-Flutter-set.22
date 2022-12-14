import 'package:desafio_sprint2/components/add_remove_button_food.dart';
import 'package:desafio_sprint2/models/food.dart';
import 'package:desafio_sprint2/screens/add_basket.dart';
import 'package:flutter/material.dart';

class ComboFood extends StatefulWidget {
  final Food item;
  const ComboFood({Key? key, required this.item}) : super(key: key);

  @override
  State<ComboFood> createState() => _ComboFoodState();
}

class _ComboFoodState extends State<ComboFood> {
  bool _isfavorite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddToBasket(item: widget.item)));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 23),
        width: 152,
        height: 183,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: 0,
                blurRadius: 0,
                offset: Offset(0, 1))
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 120),
                  child: GestureDetector(
                    onTap: () => setState(() {
                      _isfavorite = !_isfavorite;
                    }),
                    child: Icon(
                      _isfavorite == true
                          ? Icons.favorite_rounded
                          : Icons.favorite_border,
                      color: const Color.fromRGBO(255, 164, 81, 1),
                      size: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Center(
                    child: Image.asset(widget.item.imagePath),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: SizedBox(
                width: 152,
                height: 18,
                child: Text(
                  widget.item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, top: 8, right: 16, bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/currency_orange.png',
                          width: 16,
                          height: 12.8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            '${widget.item.price}',
                            style: const TextStyle(
                              color: Color.fromRGBO(240, 134, 38, 1),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  AddRemoveButton(
                    imagePath: 'assets/images/plus_signal.png',
                    item: widget.item,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
