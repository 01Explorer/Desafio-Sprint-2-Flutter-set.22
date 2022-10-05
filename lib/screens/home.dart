import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String consumerName;
  HomeScreen({Key? key, required this.consumerName}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _textHomeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/home_bars.png',
                      width: 22,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Welcome, ${widget.consumerName}.',
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: SizedBox(
                    width: 48,
                    height: 48,
                    child: FloatingActionButton(
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/images/basket_icon.png'),
                      onPressed: () => null,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 411 * 0.78,
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
                ),
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
          )
        ],
      ),
    );
  }
}
