import 'package:desafio_sprint2/providers/initial_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ComboFilter extends StatelessWidget {
  const ComboFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InitialState standard = Provider.of<InitialState>(context);
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: standard.comboOptions.length,
      itemBuilder: ((context, index) {
        return Container(
          margin: const EdgeInsets.only(top: 4, bottom: 4, left: 1, right: 8),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1))
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              child: Text(
                standard.comboOptions[index],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
