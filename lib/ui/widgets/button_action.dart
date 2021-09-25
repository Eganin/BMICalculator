import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonAction extends StatelessWidget {

  final void Function() onTap;
  final Icon icon;

  const ButtonAction({required this.icon,required this.onTap , Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      child: Container(
        padding: const EdgeInsets.all(6.0),
        decoration: const BoxDecoration(
          color: Colors.black26,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: onTap,
          icon: icon,
        ),
      ),
    );
  }
}
