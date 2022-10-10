import 'package:desafio_sprint2/providers/configs.dart';
import 'package:flutter/material.dart';

class HomeTextField extends StatelessWidget {
  const HomeTextField({
    Key? key,
    required this.settings,
    required TextEditingController textHomeController,
  })  : _textHomeController = textHomeController,
        super(key: key);

  final Settings settings;
  final TextEditingController _textHomeController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: settings.width * 0.78,
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
    );
  }
}
