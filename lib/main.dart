import 'package:desafio_sprint2/providers/configs.dart';
import 'package:desafio_sprint2/providers/initial_app.dart';
import 'package:desafio_sprint2/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const Color standardFontColor = Color.fromRGBO(39, 33, 77, 1);
    Provider.debugCheckInvalidValueType = null;
    return MultiProvider(
      providers: [
        Provider<Settings>(create: (_) => Settings()),
        ChangeNotifierProvider(create: (_) => InitialState()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'TT Norms Pro',
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: standardFontColor,
                displayColor: standardFontColor,
              ),
        ),
        initialRoute: 'splash',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
