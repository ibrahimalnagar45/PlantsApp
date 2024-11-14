import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/plant_information_model.dart';
import 'cusotm_plant_image.dart';
import 'custom_button.dart';
import 'custom_info_icon.dart';
import 'custom_info_widget.dart';
import 'plants_image_and_icons_info.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    super.key,
    required this.plant,
  });

  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 50,
          child: PlantImageAndIconsInfo(plant: plant),
        ),
        CustomInfoWidget(plant: plant),
        const Spacer(
          flex: 5,
        ),
        const Expanded(
          flex: 8,
          child: Row(
            children: [
              Expanded(
                child: CustomButton(
                  title: 'Buy Now',
                ),
              ),
              Expanded(
                  child: CustomButton(
                title: 'Description',
                colored: false,
              ))
            ],
          ),
        ),
      ],
    );
  }
}
