import 'package:flutter/material.dart';
import 'package:plantapp/widgets/featured_planst_list_view.dart';
import 'categories_feild.dart';
import 'cusotm_home_upper_section.dart';
import 'recomeded_plants_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomHomeUpperSection(),
        ),
        CategoryFeild(
          category: "Recomended",
        ),
        SliverToBoxAdapter(
          child: RecomendedPlantsListView(),
        ),
        CategoryFeild(
          category: "Featured Plants",
        ),
        SliverToBoxAdapter(
          child: FeaturedPlanstListView(),
        ),
      ],
    );
  }
}
