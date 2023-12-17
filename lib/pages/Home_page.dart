import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/models/plant_information_model.dart';
import 'package:plantapp/pages/Detailed_page.dart';
import 'package:plantapp/services/searching_service.dart';
import 'package:plantapp/widgets/categories_feild.dart';
import 'package:plantapp/widgets/Recomended_plant_information.dart';
import 'package:plantapp/widgets/palnt_information.dart';

import '../services/show_snakBar.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // final List<PlantModel> plants = const [
  //   PlantModel(
  //     image: "assets/images/img.png",
  //     name: "SAMANTHA",
  //     price: 440,
  //     countryName: "RUSSIA",
  //   ),
  //   PlantModel(
  //     image: "assets/images/image_1.png",
  //     name: "CACTUS",
  //     price: 440,
  //     countryName: "RUSSIA",
  //   ),
  //   PlantModel(
  //     image: "assets/images/bottom_img_1.png",
  //     name: "ANGELICA",
  //     price: 440,
  //     countryName: "RUSSIA",
  //   ),
  //   PlantModel(
  //     image: "assets/images/bottom_img_2.png",
  //     name: "FLOWER",
  //     price: 421,
  //     countryName: "PORTGIAL",
  //   ),
  //   PlantModel(
  //     image: "assets/images/image_2.png",
  //     name: "FLOWER2",
  //     price: 441,
  //     countryName: "EGYPT",
  //   ),
  //   PlantModel(
  //     image: "assets/images/image_3.png",
  //     name: "ROSE",
  //     price: 441,
  //     countryName: "CHINA",
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset("assets/icons/flower.svg"),
              SvgPicture.asset("assets/icons/heart-icon.svg"),
              SvgPicture.asset("assets/icons/user-icon.svg"),
            ],
          ),
        )
      ],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
                Positioned(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: kPrimaryPadding),
                        child: Text(
                          " Hi Uishopy!",
                          style: TextStyle(
                              color: Colors.white.withOpacity(.89),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Spacer(),
                      Image.asset("assets/images/logo.png")
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kPrimaryPadding),
                    padding:
                        const EdgeInsets.symmetric(horizontal: kPrimaryPadding),
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(.23))
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            onSubmitted: (data) {
                              name = Isexit(data);
                              if (name != null) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return DetailedPage(plant: name!);
                                    },
                                  ),
                                );
                              } else {
                                ShowSnakBar(
                                    context, "worng name please try agian");
                              }
                            },
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                  color: kPrimaryColor.withOpacity(.4)),
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            var n = Isexit(name!.name);
                            if (n != null) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DetailedPage(plant: n);
                                  },
                                ),
                              );
                            } else {
                              ShowSnakBar(
                                  context, "worng name please try agian");
                            }
                          },
                          child: SvgPicture.asset(
                            "assets/icons/search.svg",
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          const CategoryFeild(
            category: "Recomended",
          ),
          SliverToBoxAdapter(
            child: Container(
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
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          const CategoryFeild(
            category: "Featured Plants",
          ),
          SliverToBoxAdapter(
            child: Container(
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
            ),
          ),
        ],
      ),
    );
  }
}
