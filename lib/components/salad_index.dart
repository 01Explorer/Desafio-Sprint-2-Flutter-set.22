import 'package:flutter/material.dart';

class SaladIndex extends StatelessWidget {
  const SaladIndex({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
