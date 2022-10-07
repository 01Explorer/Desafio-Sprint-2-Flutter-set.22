import 'package:desafio_sprint2/components/add_remove_button.dart';
import 'package:desafio_sprint2/models/food.dart';
import 'package:flutter/material.dart';

class OrderListScreen extends StatefulWidget {
  OrderListScreen({Key? key}) : super(key: key);

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  final List<Food> _teste = [
    Food(
      name: 'Honey Lime',
      price: 2000,
      imagePath: 'assets/images/Honey-Lime.png',
    ),
    Food(
      name: 'Kiwi Salad',
      price: 2000,
      imagePath: 'assets/images/Kiwiberry-Fruit-Salad.png',
    ),
    Food(
      name: 'Quinoa',
      price: 2000,
      imagePath: 'assets/images/quinoa-and-red-fruit-salad.png',
    )
  ];

  final List<Color> colorList = const [
    Color.fromRGBO(255, 252, 242, 1),
    Color.fromRGBO(254, 244, 244, 1),
    Color.fromRGBO(241, 239, 246, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 164, 81, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 68),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 36),
              child: Stack(
                children: [
                  GestureDetector(
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
                  Center(
                    child: Text(
                      'My Basket',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.63,
              color: Colors.white,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 24, right: 24, top: 48),
                itemCount: _teste.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(8),
                      height: 64,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: colorList[index % 3],
                      ),
                      child: Image.asset(
                        _teste[index].imagePath,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    title: Text(
                      _teste[index].name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(51, 51, 51, 1),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 3),
                          child: Text(
                            '2packs',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Image.asset(
                                'assets/images/currency_blue.png',
                                height: 13,
                              ),
                            ),
                            Text(
                              '${_teste[index].price}',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AddRemoveButton(
                          imagePath: 'assets/images/minus.png',
                          contHeight: 32,
                          contWidth: 32,
                        ),
                      ],
                    ),
                    isThreeLine: true,
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromRGBO(250, 250, 250, 1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 56,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Text(
                                'Total',
                                style: TextStyle(
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                      'assets/images/currency_blue.png'),
                                ),
                                Text(
                                  '60,000',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: 199,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 164, 81, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Checkout',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
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
