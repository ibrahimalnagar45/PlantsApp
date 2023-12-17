import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/models/plant_information_model.dart';
import 'package:plantapp/pages/Detailed_page.dart';

class PlantInfo extends StatelessWidget {
  const PlantInfo({super.key, required this.plant});
  final PlantModel plant;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailedPage(plant: plant);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: kPrimaryPadding),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          width: 160,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        plant.image,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plant.name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(.7),
                              overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          plant.countryName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              overflow: TextOverflow.clip,
                              color: kPrimaryColor.withOpacity(.5),
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                  Text(
                    "\$${plant.price}",
                    style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
