import 'package:flutter/material.dart';

class LineHighlight extends StatelessWidget {
  final double topPadding;
  final double lineWidth;
  const LineHighlight({
    Key? key,
    this.topPadding = 6,
    this.lineWidth = 56,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: Image.asset(
        'assets/images/line_highlight.png',
        width: lineWidth,
      ),
    );
  }
}
