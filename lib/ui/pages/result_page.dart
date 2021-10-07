import 'package:bmi_calc/ui/utils/constrained.dart';
import 'package:bmi_calc/ui/widgets/submited_button.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double resultBMI;

  const ResultPage({required this.resultBMI, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> detail = getDetail(result: resultBMI);
    Color colorRes = detail[1];
    String textRes = detail[0];
    String descriptionRes = detail[2];

    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'Your result',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 50.0,
                ),
          ),
          Expanded(
            child: Container(
              color: kSelectedContainer,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    textRes,
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(color: colorRes),
                  ),
                  Text(
                    resultBMI.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 70.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      descriptionRes,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: const SubmitedButton(text: 'RE-Calculate'),
          ),
        ],
      ),
    );
  }
}

enum StateBMI { fault, normal, excess, obesity }

extension StateBMIExtension on StateBMI {
  String get value {
    switch (this) {
      case StateBMI.excess:
        return 'excess';

      case StateBMI.normal:
        return 'normal';

      case StateBMI.fault:
        return 'fault';

      case StateBMI.obesity:
        return 'obesity';
    }
  }

  Color get color {
    switch (this) {
      case StateBMI.excess:
        return Colors.orange;

      case StateBMI.normal:
        return Colors.green;

      case StateBMI.fault:
        return Colors.white;

      case StateBMI.obesity:
        return Colors.red;
    }
  }

  String get description {
    switch (this) {
      case StateBMI.excess:
        return 'it is necessary to reduce the weight. Move more and reduce your calorie intake';

      case StateBMI.normal:
        return 'continue to stick to your diet and physical activity';

      case StateBMI.fault:
        return 'insufficient body weight can have a bad effect on overall health';

      case StateBMI.obesity:
        return 'it is necessary to normalize body weight as soon as possible';
    }
  }
}

List<dynamic> getDetail({required double result}) {
  List<dynamic> mapper = [];
  if (result < 18.5) {
    mapper.addAll([
      StateBMI.fault.value,
      StateBMI.fault.color,
      StateBMI.fault.description,
    ]);
  } else if (result > 18.5 && result < 24.9) {
    mapper.addAll([
      StateBMI.normal.value,
      StateBMI.normal.color,
      StateBMI.normal.description,
    ]);
  } else if (result > 25 && result < 29.9) {
    mapper.addAll([
      StateBMI.excess.value,
      StateBMI.excess.color,
      StateBMI.excess.description,
    ]);
  } else {
    mapper.addAll([
      StateBMI.obesity.value,
      StateBMI.obesity.color,
      StateBMI.obesity.description,
    ]);
  }
  return mapper;
}
