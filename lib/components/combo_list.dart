import 'package:desafio_sprint2/providers/initial_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ComboList extends StatelessWidget {
  const ComboList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InitialState standard = Provider.of<InitialState>(context);
    return SizedBox(
      height: 183,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: standard.recommendedList,
      ),
    );
  }
}
