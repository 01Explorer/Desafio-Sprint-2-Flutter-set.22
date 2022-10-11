import 'package:desafio_sprint2/components/add_remove_button_food.dart';
import 'package:desafio_sprint2/components/blue_currency_text.dart';
import 'package:desafio_sprint2/providers/initial_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InitialState standard = Provider.of<InitialState>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.63,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 5, right: 24, top: 48),
        itemCount: standard.basketList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Container(
              padding: const EdgeInsets.all(8),
              height: 64,
              width: 65,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: standard.colorList[index % 3],
              ),
              child: Image.asset(
                standard.basketList[index].imagePath,
                fit: BoxFit.scaleDown,
              ),
            ),
            title: Text(
              standard.basketList[index].name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(51, 51, 51, 1),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 2, bottom: 3),
                  child: Text(
                    '2packs',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
                BlueCurrencyText(
                  value: standard.basketList[index].price,
                  textSize: 16,
                  imageHeight: 13,
                )
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AddRemoveButton(
                  imagePath: 'assets/images/minus.png',
                  contHeight: 32,
                  contWidth: 32,
                  item: standard.basketList[index],
                ),
              ],
            ),
            isThreeLine: true,
          );
        },
      ),
    );
  }
}
