import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

class CategoryFeild extends StatelessWidget {
  const CategoryFeild({super.key, required this.category});
 final String category;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: const EdgeInsets.only(
        bottom: 5,
        right: kPrimaryPadding,
        left: kPrimaryPadding,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset:const Offset(0, 10),
                  blurRadius: 12,
                  color: kPrimaryColor.withOpacity(.2))
            ]),
            child: Text(
              category,
              style:const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 66, 65, 65),
              ),
            ),
          ),
        const  Spacer(
            flex: 15,
          ),
          Container(
            width: 70,
            height: 30,
            decoration: BoxDecoration(
                color: kPrimaryColor, borderRadius: BorderRadius.circular(20)),
            child:  const Center(
              child: Text(
                "More",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
       const   Spacer(
            flex: 1,
          ),
        ],
      ),
    ),);
  }
}
