import 'package:flutter/material.dart';

import '../views/home_view.dart';
import 'Recomended_plant_information.dart';

class RecomendedPlantsListView extends StatelessWidget {
  const RecomendedPlantsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: 220,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: plants.length,
        itemBuilder: (context, index) => PlantInfo(
          plant: plants[index],
        ),
      ),
    );
  }
}
