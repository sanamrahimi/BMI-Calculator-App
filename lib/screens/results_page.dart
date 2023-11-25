import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/resusable_cart.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String? bmiResult, resultText, intrepretation;

  const ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      this.intrepretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText!.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult!,
                    style: kBMITextStyle,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Normal BMI Range:',
                        style: kGrayBodyTextStyle,
                      ),
                      const Text(
                        '18.5 - 25 kg/m2',
                        style: kBodyTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          intrepretation!,
                          style: kBodyTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
