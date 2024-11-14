import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/models/plant_information_model.dart';
import 'package:plantapp/views/detailed_view.dart';
import 'package:plantapp/core/methods/searching_service.dart';
import 'package:plantapp/widgets/categories_feild.dart';
import 'package:plantapp/widgets/Recomended_plant_information.dart';
import 'package:plantapp/widgets/palnt_information.dart';

import '../core/methods/show_snakBar.dart';
import '../widgets/custom_footer.dart';
import '../widgets/home_view_body.dart';

const List<PlantModel> plants = [
  PlantModel(
    image: "assets/images/img.png",
    name: "SAMANTHA",
    price: 440,
    countryName: "RUSSIA",
  ),
  PlantModel(
    image: "assets/images/image_1.png",
    name: "CACTUS",
    price: 440,
    countryName: "RUSSIA",
  ),
  PlantModel(
    image: "assets/images/bottom_img_1.png",
    name: "ANGELICA",
    price: 440,
    countryName: "RUSSIA",
  ),
  PlantModel(
    image: "assets/images/bottom_img_2.png",
    name: "FLOWER",
    price: 421,
    countryName: "PORTGIAL",
  ),
  PlantModel(
    image: "assets/images/image_2.png",
    name: "FLOWER2",
    price: 441,
    countryName: "EGYPT",
  ),
  PlantModel(
    image: "assets/images/image_3.png",
    name: "ROSE",
    price: 441,
    countryName: "CHINA",
  ),
];
PlantModel? name;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: const [
        CustomFooter(),
      ],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: const HomeViewBody(),
    );
  }
}
