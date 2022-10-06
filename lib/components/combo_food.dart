import 'package:desafio_sprint2/models/food.dart';
import 'package:flutter/material.dart';

class ComboFood extends StatefulWidget {
  final Food item;
  ComboFood({Key? key, required this.item}) : super(key: key);

  @override
  State<ComboFood> createState() => _ComboFoodState();
}

class _ComboFoodState extends State<ComboFood> {
  bool _isfavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 23),
      width: 152,
      height: 183,
      decoration: BoxDecoration(
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
                    color: Color.fromRGBO(255, 164, 81, 1),
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
            padding: EdgeInsets.only(top: 13),
            child: SizedBox(
              width: 152,
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
            padding: EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/currency.png',
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
