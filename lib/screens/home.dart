import 'package:desafio_sprint2/components/combo_filter.dart';
import 'package:desafio_sprint2/components/combo_list.dart';
import 'package:desafio_sprint2/components/consumer_welcome.dart';
import 'package:desafio_sprint2/components/home_text_field.dart';
import 'package:desafio_sprint2/components/image_floating_button.dart';
import 'package:desafio_sprint2/components/line_highlight.dart';
import 'package:desafio_sprint2/components/salad_index.dart';
import 'package:desafio_sprint2/components/salad_list.dart';
import 'package:desafio_sprint2/providers/configs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  final String consumerName;
  const HomeScreen({Key? key, required this.consumerName}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _textHomeController = TextEditingController();
  final String buttonImage = 'assets/images/basket_icon.png';
  final String comboTitle = 'Recommended Combo';
  @override
  Widget build(BuildContext context) {
    final Settings settings = Provider.of<Settings>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConsumerWelcome(
                      consumerName: widget.consumerName,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: ImageFloatingButton(
                        imagePath: buttonImage,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeTextField(
                        settings: settings,
                        textHomeController: _textHomeController),
                    Container(
                      width: 35,
                      height: 55,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(247, 247, 252, 1),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/filter_icon.png',
                          height: 17,
                          width: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
                child: Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: ComboFilter(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: Text(
                  comboTitle,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const LineHighlight(),
              const Padding(
                padding: EdgeInsets.only(top: 13),
                child: ComboList(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: SaladIndex(),
              ),
              const LineHighlight(
                lineWidth: 38,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24, bottom: 32),
                child: SaladList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
