import 'package:bmi_calc/ui/utils/constrained.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  int initialValue = 150;
  SliderWidget({Key? key}) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'HEIGHT',
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.initialValue.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'cm',
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
        Slider(
          value: widget.initialValue.toDouble(),
          min: 100,
          max: 200,
          activeColor: kBottomBanner,
          inactiveColor:kBottomBanner ,
          label: '${widget.initialValue.round()}',
          onChanged: (double value) {
            setState(() {
              widget.initialValue = value.round();
            });
          },
        ),
      ],
    );
  }
}
