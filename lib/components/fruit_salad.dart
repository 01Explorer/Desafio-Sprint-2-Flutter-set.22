import 'package:desafio_sprint2/models/food.dart';
import 'package:flutter/material.dart';

class FruitSalad extends StatefulWidget {
  final Food item;
  final int index;
  const FruitSalad({Key? key, required this.item, this.index = 0})
      : super(key: key);

  final List<Color> colorList = const [
    Color.fromRGBO(255, 252, 242, 1),
    Color.fromRGBO(254, 244, 244, 1),
    Color.fromRGBO(241, 239, 246, 1),
  ];

  @override
  State<FruitSalad> createState() => _FruitSaladState();
}

class _FruitSaladState extends State<FruitSalad> {
  bool _isfavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 140,
      height: 150,
      decoration: BoxDecoration(
        color: widget.colorList[widget.index],
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(0, 1))
        ],
        borderRadius: BorderRadius.all(
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
                    color: Color.fromRGBO(255, 164, 81, 1),
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
            padding: EdgeInsets.only(top: 9),
            child: SizedBox(
              width: 140,
              height: 18,
              child: Text(
                widget.item.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
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
                InkWell(
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 242, 231, 1),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/images/plus_signal.png'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
