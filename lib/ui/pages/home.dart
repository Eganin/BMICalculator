import 'package:bmi_calc/ui/utils/constrained.dart';
import 'package:bmi_calc/ui/widgets/reusable_card.dart';
import 'package:bmi_calc/ui/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender gender = Gender.male;
  var age = 20;
  var weight = 70;
  var height = 180;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  color: gender == Gender.male
                      ? kSelectedContainer
                      : Theme.of(context).primaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.mars,
                        size: 100,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'MALE',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      gender = Gender.male;
                    });
                  },
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: gender == Gender.female
                      ? kSelectedContainer
                      : Theme.of(context).primaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.venus,
                        size: 100,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'FEMALE',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      gender = Gender.female;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  color: kSelectedContainer,
                  child: SliderWidget(),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  color: Theme.of(context).primaryColor,
                  child: Container(),
                  onTap: () {},
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: Theme.of(context).primaryColor,
                  child: Container(),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
