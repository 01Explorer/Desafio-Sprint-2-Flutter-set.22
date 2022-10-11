import 'package:desafio_sprint2/components/add_remove_button_qnt.dart';
import 'package:desafio_sprint2/components/blue_currency_text.dart';
import 'package:desafio_sprint2/components/favorite_button.dart';
import 'package:desafio_sprint2/components/go_back_button.dart';
import 'package:desafio_sprint2/components/ingredients_chip.dart';
import 'package:desafio_sprint2/components/line_highlight.dart';
import 'package:desafio_sprint2/components/main_button.dart';
import 'package:desafio_sprint2/components/orders_list.dart';
import 'package:desafio_sprint2/models/food.dart';
import 'package:desafio_sprint2/providers/configs.dart';
import 'package:desafio_sprint2/providers/initial_app.dart';
import 'package:desafio_sprint2/screens/order_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddToBasket extends StatefulWidget {
  final Food item;
  const AddToBasket({Key? key, required this.item}) : super(key: key);

  @override
  State<AddToBasket> createState() => _AddToBasketState();
}

class _AddToBasketState extends State<AddToBasket> {
  bool _isSelected = false;
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    final Settings settings = Provider.of<Settings>(context);
    final InitialState standard = Provider.of<InitialState>(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 164, 81, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 64, left: 24),
                child: GoBackButton()),
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
                width: settings.width,
                decoration: const BoxDecoration(
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
                          padding: const EdgeInsets.only(top: 40),
                          child: Text(
                            widget.item.name,
                            style: const TextStyle(
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
                              padding: const EdgeInsets.only(bottom: 40),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 120,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (quantity > 0) {
                                                quantity--;
                                              }
                                            });
                                          },
                                          child: const AddRemoveButtonBasket(
                                            imagePath:
                                                'assets/images/minus.png',
                                            contWidth: 32,
                                            contHeight: 32,
                                          ),
                                        ),
                                        Text(
                                          '$quantity',
                                          style: const TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              quantity++;
                                            });
                                          },
                                          child: const AddRemoveButtonBasket(
                                            imagePath:
                                                'assets/images/plus_signal.png',
                                            contHeight: 32,
                                            contWidth: 32,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                    child: BlueCurrencyText(
                                      value: widget.item.price,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            'This combo contains:',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const LineHighlight(
                          topPadding: 8,
                        ),
                        IngredientsChip(
                          item: widget.item,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, right: 25),
                          child: Text(
                            widget.item.message,
                            style: const TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Color.fromRGBO(51, 51, 51, 1)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 43, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => setState(() {
                                  _isSelected = !_isSelected;
                                }),
                                child: FavoriteButton(isSelected: _isSelected),
                              ),
                              SizedBox(
                                width: 215,
                                child: InkWell(
                                  onTap: () {
                                    standard.addBasket(widget.item,
                                        quantity: quantity);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const OrderListScreen()));
                                  },
                                  child: Container(
                                    height: 56,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(255, 164, 81, 1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Add To Basket',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
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
      ),
    );
  }
}
