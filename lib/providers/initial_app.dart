import 'package:desafio_sprint2/components/combo_food.dart';
import 'package:desafio_sprint2/components/fruit_salad.dart';
import 'package:desafio_sprint2/models/food.dart';
import 'package:flutter/material.dart';

class InitialState extends ChangeNotifier {
  List<String> comboOptions = [
    'All',
    'Salad Combo',
    'Berry Combo',
    'Mango Combo',
  ];

  List<ComboFood> recommendedList = [
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
  ];

  List<FruitSalad> fruitSaladList = [
    FruitSalad(
      item: Food(
        name: 'Quinoa fruit salad',
        price: 10000,
        imagePath: 'assets/images/quinoa-and-red-fruit-salad.png',
      ),
    ),
    FruitSalad(
      item: Food(
        name: 'Tropical fruit salad',
        price: 10000,
        imagePath: 'assets/images/Tropical-Fruit-Salad.png',
      ),
      index: 1,
    ),
    FruitSalad(
      item: Food(
        name: 'Melon fruit salad',
        price: 10000,
        imagePath: 'assets/images/Kiwiberry-Fruit-Salad.png',
      ),
      index: 2,
    )
  ];

  final List<Color> colorList = const [
    Color.fromRGBO(255, 252, 242, 1),
    Color.fromRGBO(254, 244, 244, 1),
    Color.fromRGBO(241, 239, 246, 1),
  ];

  List<Food> basketList = [];

  void addBasket(Food item, {int quantity = 1}) {
    if (quantity > 0) {
      for (int i = 0; i < quantity; i++) {
        basketList.add(item);
      }
    }
  }

  void removeBasket(Food item) {
    if (basketList.isNotEmpty) {
      basketList.remove(item);
    }
  }
}
