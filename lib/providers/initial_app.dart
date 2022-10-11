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
        ingredients: [
          'Lime',
          'Honey',
          'Blueberries',
          'Strawberries',
          'Fresh Mint',
        ],
        message:
            'If you are looking for a new fruit combo to eat today, Honey lime is the perfect brunch for you.',
      ),
    ),
    ComboFood(
      item: Food(
        name: 'Berry mango combo',
        price: 2000,
        imagePath: 'assets/images/Berry-Fruit.png',
        ingredients: [
          'Blueberries',
          'Mango',
          'Strawberries',
        ],
        message:
            'If you are looking for a new combo to eat today, Berry mango is the perfect brunch for you.',
      ),
    ),
  ];

  List<FruitSalad> fruitSaladList = [
    FruitSalad(
      item: Food(
        name: 'Quinoa fruit salad',
        price: 10000,
        imagePath: 'assets/images/quinoa-and-red-fruit-salad.png',
        ingredients: [
          'Red Quinoa',
          'Lime',
          'Honey',
          'Blueberries',
          'Mango',
          'Strawberries',
          'Fresh Mint',
        ],
        message:
            'If you are looking for a new fruit salad to eat today, Quinoa is the perfect brunch for you.',
      ),
    ),
    FruitSalad(
      item: Food(
        name: 'Tropical fruit salad',
        price: 10000,
        imagePath: 'assets/images/Tropical-Fruit-Salad.png',
        ingredients: [
          'Lime',
          'Honey',
          'Mango',
          'Fresh Mint',
        ],
        message:
            'If you are looking for a new fruit salad to eat today, Tropical is the perfect brunch for you. make',
      ),
      index: 1,
    ),
    FruitSalad(
      item: Food(
        name: 'Melon fruit salad',
        price: 10000,
        imagePath: 'assets/images/Kiwiberry-Fruit-Salad.png',
        ingredients: [
          'Melon',
          'Honey',
          'Blueberries',
          'Mango',
          'Strawberries',
        ],
        message:
            'If you are looking for a new fruit salad to eat today, Melon is the perfect brunch for you. make',
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
        debugPrint(item.name);
        notifyListeners();
      }
    }
  }

  void removeBasket(Food item) {
    if (basketList.isNotEmpty) {
      basketList.remove(item);
      debugPrint(item.name);
      notifyListeners();
    }
  }

  double sumTotal() {
    if (basketList.isNotEmpty) {
      double total = 0;
      for (var element in basketList) {
        total += element.price;
      }
      return total;
    }

    return 0;
  }
}
