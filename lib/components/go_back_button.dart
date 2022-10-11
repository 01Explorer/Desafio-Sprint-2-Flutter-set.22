import 'package:flutter/material.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
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
    );
  }
}
