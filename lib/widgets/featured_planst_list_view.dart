import 'package:flutter/material.dart';

import '../views/home_view.dart';
import 'palnt_information.dart';

class FeaturedPlanstListView extends StatelessWidget {
  const FeaturedPlanstListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: 300,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: plants.length,
        itemBuilder: (context, index) => PlantInfoBigger(
          plant: plants[index],
        ),
      ),
    );
  }
}
