import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/widgets/custom_icon.dart';

import '../models/plant_information_model.dart';
import '../widgets/details_view_body.dart';

class DetailedPage extends StatelessWidget {
  const DetailedPage({super.key, required this.plant});
  final PlantModel plant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4FA),
      body: DetailsViewBody(plant: plant),
    );
  }
}
