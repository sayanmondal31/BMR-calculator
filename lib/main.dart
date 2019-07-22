import 'package:bmr_calculator/decide_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BmrCal());

class BmrCal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DecidePage(),
    );
  }
}
