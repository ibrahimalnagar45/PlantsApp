import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/models/plant_information_model.dart';
import 'package:plantapp/views/detailed_view.dart';

class PlantInfoBigger extends StatelessWidget {
  const PlantInfoBigger({super.key, required this.plant});
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
        padding: const EdgeInsets.only(
          right: kPrimaryPadding,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          width: 300,
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius:const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        plant.image,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plant.name,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black.withOpacity(.67),
                          ),
                        ),
                        Text(
                          plant.countryName,
                          style: TextStyle(
                            fontSize: 14,
                            color: kPrimaryTextColor.withOpacity(.5),
                          ),
                        ),
                      ],
                    ),
                 const   Spacer(
                      flex: 10,
                    ),
                    Text(
                      "\$${plant.price}",
                      style:const TextStyle(color: kPrimaryColor),
                    ),
                 const   Spacer(
                      flex: 1,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
