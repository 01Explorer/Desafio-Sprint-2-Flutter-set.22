import 'dart:ui';

import 'package:desafio_sprint2/components/add_remove_button.dart';
import 'package:desafio_sprint2/models/food.dart';
import 'package:flutter/material.dart';

class AddToBasket extends StatefulWidget {
  final Food item;
  AddToBasket({Key? key, required this.item}) : super(key: key);

  @override
  State<AddToBasket> createState() => _AddToBasketState();
}

class _AddToBasketState extends State<AddToBasket> {
  final List<String> _teste = [
    'Red Quinoa',
    'Lime',
    'Honey',
    'Blueberries',
    'Mango',
    'Strawberries',
    'Fresh Mint',
  ];
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 164, 81, 1),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 64, left: 24),
            child: GestureDetector(
              onTap: () => null,
              child: Container(
                width: 75,
                height: 32,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                        color: Color.fromRGBO(51, 51, 51, 0.8),
                      ),
                      Text(
                        'Go back',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110, left: 110),
            child: SizedBox(
              width: 180,
              height: 180,
              child: Image.asset(
                widget.item.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ClipRRect(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          widget.item.name,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Container(
                          height: 75,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(243, 243, 243, 1),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 41),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const AddRemoveButton(
                                        imagePath: 'assets/images/minus.png',
                                        contWidth: 32,
                                        contHeight: 32,
                                      ),
                                      Text(
                                        '$quantity',
                                        style: const TextStyle(
                                          fontSize: 24,
                                        ),
                                      ),
                                      const AddRemoveButton(
                                        imagePath:
                                            'assets/images/plus_signal.png',
                                        contHeight: 32,
                                        contWidth: 32,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                          'assets/images/currency_blue.png'),
                                      Text(
                                        '${widget.item.price}',
                                        style: const TextStyle(
                                          fontSize: 24,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'This combo contains:',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Image.asset(
                          'assets/images/line_highlight.png',
                          width: 56,
                        ),
                      ),
                      Container(
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(243, 243, 243, 1),
                            ),
                          ),
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 6,
                              runSpacing: 0,
                              children: [
                                for (var item in _teste)
                                  Chip(
                                    label: Text(item),
                                  ),
                              ],
                            )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 14, right: 25),
                        child: Text(
                          'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Color.fromRGBO(51, 51, 51, 1)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 43),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(255, 247, 240, 1),
                              ),
                              child: Icon(
                                Icons.favorite_border_rounded,
                                color: Color.fromRGBO(255, 164, 81, 1),
                              ),
                            ),
                            Container(
                              width: 215,
                              height: 58,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 164, 81, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Add To Basket',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
