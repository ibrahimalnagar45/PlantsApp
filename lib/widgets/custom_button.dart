import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.colored = true, required this.title,
  });

  final String title;
  final bool colored;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: colored ? kPrimaryColor : Colors.transparent,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: colored ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
