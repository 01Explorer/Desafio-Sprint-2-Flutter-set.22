import 'package:desafio_sprint2/components/add_remove_button_food.dart';
import 'package:desafio_sprint2/models/food.dart';
import 'package:desafio_sprint2/providers/initial_app.dart';
import 'package:desafio_sprint2/screens/add_basket.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FruitSalad extends StatefulWidget {
  final Food item;
  final int index;
  const FruitSalad({Key? key, required this.item, this.index = 0})
      : super(key: key);

  @override
  State<FruitSalad> createState() => _FruitSaladState();
}

class _FruitSaladState extends State<FruitSalad> {
  final String imagePath = 'assets/images/plus_signal.png';
  bool _isfavorite = false;
  @override
  Widget build(BuildContext context) {
    final InitialState standard = Provider.of<InitialState>(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddToBasket(item: widget.item)));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 140,
        height: 150,
        decoration: BoxDecoration(
          color: standard.colorList[widget.index],
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: 0,
                blurRadius: 0,
                offset: Offset(0, 1))
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 108),
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
                  padding: const EdgeInsets.only(top: 19),
                  child: SizedBox(
                    height: 64,
                    child: Center(
                      child: Image.asset(
                        widget.item.imagePath,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9),
              child: SizedBox(
                width: 140,
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
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
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
                  AddRemoveButton(imagePath: imagePath, item: widget.item)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
