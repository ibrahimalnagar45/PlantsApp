import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/plant_information_model.dart';

class CustomInfoWidget extends StatelessWidget {
  const CustomInfoWidget({
    super.key,
    required this.plant,
  });

  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: kPrimaryPadding, top: kPrimaryPadding * 2),
      child: Expanded(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plant.name,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  plant.countryName,
                  style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 10,
            ),
            Text(
              "\$${plant.price}",
              style: const TextStyle(color: kPrimaryColor, fontSize: 20),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
