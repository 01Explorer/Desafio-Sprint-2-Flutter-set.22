import 'package:desafio_sprint2/providers/initial_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SaladList extends StatelessWidget {
  const SaladList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InitialState standard = Provider.of<InitialState>(context);
    return SizedBox(
      height: 150,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: standard.fruitSaladList,
      ),
    );
  }
}
