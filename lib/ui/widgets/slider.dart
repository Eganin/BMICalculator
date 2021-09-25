import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int intialValue = 150;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'HEIGHT',
          style: Theme.of(context).textTheme.headline3,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              intialValue.toString(),
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text('cm',style: Theme.of(context).textTheme.bodyText1, )
          ],
        ),
      ],
    );
  }
}
