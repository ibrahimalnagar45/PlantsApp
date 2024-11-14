
import 'package:flutter/material.dart';

import '../models/plant_information_model.dart';

class CustomPlantImage extends StatelessWidget {
  const CustomPlantImage({
    super.key,
    required this.plant,
  });

  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(plant.image),
        ),
      ),
    );
  }
}
