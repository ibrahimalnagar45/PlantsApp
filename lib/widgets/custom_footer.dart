import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset("assets/icons/flower.svg"),
          SvgPicture.asset("assets/icons/heart-icon.svg"),
          SvgPicture.asset("assets/icons/user-icon.svg"),
        ],
      ),
    );
  }
}
