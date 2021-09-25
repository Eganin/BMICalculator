import 'package:bmi_calc/ui/widgets/button_action.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category extends StatefulWidget {
  final Counter type;
  int weightCounter = 60;
  int ageCounter = 25;

  Category({required this.type, Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.type == Counter.age ? 'AGE' : 'WEIGHT',
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          widget.type == Counter.age
              ? widget.ageCounter.toString()
              : widget.weightCounter.toString(),
          style: Theme.of(context).textTheme.headline1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonAction(
              onTap: () {
                setState(() {
                  widget.type == Counter.age
                      ? --widget.ageCounter
                      : --widget.weightCounter;
                });
              },
              icon: const Icon(FontAwesomeIcons.minus),
            ),
            ButtonAction(
              onTap: () {
                setState(() {
                  widget.type == Counter.age
                      ? ++widget.ageCounter
                      : ++widget.weightCounter;
                });
              },
              icon: const Icon(FontAwesomeIcons.plus),
            ),
          ],
        ),
      ],
    );
  }
}

enum Counter {
  weight,
  age,
}
