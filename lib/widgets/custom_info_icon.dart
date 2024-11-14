import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomInfoIcon extends StatelessWidget {
  const CustomInfoIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomIcon(icon: "assets/icons/sun.svg"),
        CustomIcon(icon: "assets/icons/icon_2.svg"),
        CustomIcon(icon: "assets/icons/icon_3.svg"),
        CustomIcon(icon: "assets/icons/icon_4.svg"),
      ],
    );
  }
}
