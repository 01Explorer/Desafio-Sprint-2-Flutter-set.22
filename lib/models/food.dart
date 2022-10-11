class Food {
  final String name;
  final double price;
  final String imagePath;
  final String message;
  final List<String> ingredients;

  Food(
      {required this.message,
      required this.ingredients,
      required this.name,
      required this.price,
      required this.imagePath});
}
