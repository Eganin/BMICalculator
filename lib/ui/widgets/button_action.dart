import 'package:flutter/material.dart';

class ButtonAction extends StatelessWidget {

  final void Function() onTap;
  final Icon icon;

  const ButtonAction({required this.icon,required this.onTap , Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      onPressed: onTap,
      constraints:const BoxConstraints.tightFor(width: 56.0,height: 56.0),
      elevation: 10,
      fillColor: Colors.black12,
      child: icon,
    );
  }
}
