import 'package:bmr_calculator/calculate_button.dart';
import 'package:bmr_calculator/constant.dart';
import 'package:bmr_calculator/reuasble_card.dart';
import 'package:flutter/material.dart';

class ResultPageMetricwomen extends StatelessWidget {
  final String bmrResultMetric;
  // final String resultText;
  // final String interpretation;

  ResultPageMetricwomen({
    @required this.bmrResultMetric,
    // @required this.resultText,
    // @required this.interpretation
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      appBar: AppBar(
        title: Text('BMR  calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kresultPage,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kcolorChange,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Text(
                  //   resultText.toUpperCase(),
                  //   style: kresultTextStyle,
                  // ),
                  Column(
                    children: <Widget>[
                      Text(
                        'BMR',
                        style: ktextUi,
                      ),
                      Text(
                        bmrResultMetric.toString(),
                        style: kBMItextStyle,
                      ),
                    ],
                  ),
                  // Text(
                  //   interpretation,
                  //   style: kresultBodyText,
                  //   textAlign: TextAlign.center,
                  // )
                ],
              ),
            ),
          ),
          CalculateBMI(
            textb: "Re-calculate",
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
