import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/plant_information_model.dart';
import 'cusotm_plant_image.dart';
import 'custom_info_icon.dart';

class PlantImageAndIconsInfo extends StatelessWidget {
  const PlantImageAndIconsInfo({
    super.key,
    required this.plant,
  });

  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            right: kPrimaryPadding / 2,
            top: kPrimaryPadding * 4,
          ),
          child: CustomInfoIcon(),
        ),
        Expanded(
          child: CustomPlantImage(plant: plant),
        ),
      ],
    );
  }
}
