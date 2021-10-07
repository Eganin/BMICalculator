import 'package:bmi_calc/ui/utils/constrained.dart';
import 'package:flutter/material.dart';

class SubmitedButton extends StatelessWidget {
  final String text;

  const SubmitedButton({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBottomBanner,
      height: hContainerSubmited,
      width: double.infinity,
      child: Center(
        child: Text(
          text,
          style:
              Theme.of(context).textTheme.headline1!.copyWith(fontSize: 30.0),
        ),
      ),
    );
  }
}
