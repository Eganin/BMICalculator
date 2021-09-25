import 'package:bmi_calc/ui/utils/constrained.dart';
import 'package:bmi_calc/ui/widgets/category.dart';
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
  SliderWidget slider = SliderWidget();
  Category weightCategory = Category(
    type: Counter.weight,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
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
                    child: slider,
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
                    child: weightCategory,
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Theme.of(context).primaryColor,
                    child: Category(
                      type: Counter.age,
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              final heightSquared = slider.initialValue / 100;
              final result = weightCategory.weightCounter / (heightSquared * heightSquared);
              Navigator.pushNamed(context, '/result', arguments: result);
            },
            child: Container(
              color: kBottomBanner,
              height: hContainerSubmited,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Calculate',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 30.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
