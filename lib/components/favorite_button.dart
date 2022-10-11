import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    Key? key,
    required bool isSelected,
  })  : _isSelected = isSelected,
        super(key: key);

  final bool _isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(255, 247, 240, 1),
      ),
      child: Icon(
        _isSelected ? Icons.favorite_rounded : Icons.favorite_border_rounded,
        color: const Color.fromRGBO(255, 164, 81, 1),
      ),
    );
  }
}
