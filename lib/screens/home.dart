import 'package:desafio_sprint2/components/combo_food.dart';
import 'package:desafio_sprint2/components/fruit_salad.dart';
import 'package:desafio_sprint2/models/food.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String consumerName;
  HomeScreen({Key? key, required this.consumerName}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _textHomeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/home_bars.png',
                      width: 22,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Welcome, ${widget.consumerName}.',
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: SizedBox(
                    width: 48,
                    height: 48,
                    child: FloatingActionButton(
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/images/basket_icon.png'),
                      onPressed: () => null,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 411 * 0.78,
                  height: 56,
                  child: TextField(
                    controller: _textHomeController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search_rounded),
                      prefixIconColor: Color.fromRGBO(134, 134, 158, 1),
                      hintText: 'Search for fruit salad combos',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(180, 180, 192, 1),
                      ),
                      filled: true,
                      fillColor: Color.fromRGBO(245, 245, 245, 1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 35,
                  height: 55,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(247, 247, 252, 1),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/filter_icon.png',
                      height: 17,
                      width: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(top: 18, left: 24),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 4, bottom: 4, right: 8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1))
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 8, bottom: 8),
                        child: Text(
                          'Item Combo $index',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 36),
            child: Text(
              'Recommended Combo',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 6),
            child: Image.asset('assets/images/line_highlight.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13, left: 24),
            child: SizedBox(
              height: 183,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  ComboFood(
                    item: Food(
                      name: 'Honey lime combo',
                      price: 2000,
                      imagePath: 'assets/images/Honey-Lime.png',
                    ),
                  ),
                  ComboFood(
                    item: Food(
                      name: 'Berry mango combo',
                      price: 2000,
                      imagePath: 'assets/images/Berry-Fruit.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 24),
            child: SizedBox(
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Hottest',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'New Combo',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6, left: 24),
            child: Image.asset(
              'assets/images/line_highlight.png',
              width: 38,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 24),
            child: SizedBox(
              height: 150,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  FruitSalad(
                    item: Food(
                      name: 'Honey lime combo',
                      price: 2000,
                      imagePath: 'assets/images/quinoa-and-red-fruit-salad.png',
                    ),
                  ),
                  FruitSalad(
                    item: Food(
                      name: 'Honey lime combo',
                      price: 2000,
                      imagePath: 'assets/images/Tropical-Fruit-Salad.png',
                    ),
                    index: 1,
                  ),
                  FruitSalad(
                    item: Food(
                      name: 'Honey lime combo',
                      price: 2000,
                      imagePath: 'assets/images/Kiwiberry-Fruit-Salad.png',
                    ),
                    index: 2,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
