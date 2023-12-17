import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class CustomIcon extends StatelessWidget {
 const CustomIcon({super.key, required this.icon});
 final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const  EdgeInsets.only(
        left: kPrimaryPadding,
        right: kPrimaryPadding,
        top: kPrimaryPadding,
        bottom: kPrimaryPadding * 2,
      ),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 12),
            blurRadius: 23,
            spreadRadius: 4,
            color: kPrimaryColor.withOpacity(.3),
          )
        ],
        color: Colors.white.withOpacity(.8),
        borderRadius: BorderRadius.circular(5),
      ),
      child: SvgPicture.asset(
        icon,
      ),
    );
  }
}
