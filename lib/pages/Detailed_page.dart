import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/widgets/custom_icon.dart';

import '../models/plant_information_model.dart';

class DetailedPage extends StatelessWidget {
  const DetailedPage({super.key, required this.plant});
  final PlantModel plant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4FA),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 50,
            child: Row(
              // mainAxisSize: MainAxisSize.max,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      right: kPrimaryPadding / 2, top: kPrimaryPadding * 4),
                  child: Column(
                    children: [
                      CustomIcon(icon: "assets/icons/sun.svg"),
                      CustomIcon(icon: "assets/icons/icon_2.svg"),
                      CustomIcon(icon: "assets/icons/icon_3.svg"),
                      CustomIcon(icon: "assets/icons/icon_4.svg"),
                    ],
                  ),
                ),
                Expanded(
                  flex: 12,
                  child: Container(
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(plant.image),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
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
          ),
          const Spacer(
            flex: 5,
          ),
          Expanded(
            flex: 8,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 80,
                    decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Buy Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Center(
                      child: Text("Description"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
