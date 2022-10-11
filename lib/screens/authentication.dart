import 'package:desafio_sprint2/components/main_button.dart';
import 'package:desafio_sprint2/components/welcome_auth_image.dart';
import 'package:desafio_sprint2/providers/configs.dart';
import 'package:desafio_sprint2/providers/initial_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Settings settings = Provider.of<Settings>(context);
    final InitialState standard = Provider.of<InitialState>(context);
    const String mainImagePath = 'assets/images/authentication_basket.png';
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContainerImage(
              height: settings.height,
              width: settings.width,
              imagePath: mainImagePath,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, bottom: 8, left: 24, right: 88),
              child: Text(
                'What is your firstname?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 17),
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: 'Chris',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(194, 189, 189, 0.7),
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(247, 245, 245, 1),
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
                onSubmitted: (String value) {
                  setState(() {
                    _textController.text = value.trim();
                    standard.consumerName = _textController.text;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 58),
              child: MainButton(
                message: 'Start Ordering',
                destination:
                    _textController.text.isNotEmpty ? 'home' : 'authentication',
                args: _textController.text,
              ),
            )
          ],
        ),
      ),
    );
  }
}
