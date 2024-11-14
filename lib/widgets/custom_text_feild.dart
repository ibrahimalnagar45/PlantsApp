
import 'package:flutter/material.dart';

import '../constants.dart';
import '../core/methods/searching_service.dart';
import '../core/methods/show_snakBar.dart';
import '../views/detailed_view.dart';
import '../views/home_view.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kPrimaryPadding),
      padding: const EdgeInsets.symmetric(horizontal: kPrimaryPadding),
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
                  ShowSnakBar(context, "worng name please try agian");
                }
              },
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
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
                        ShowSnakBar(context, "worng name please try agian");
                      }
                    },
                    icon: const Icon(
                      Icons.search,
                      color: kPrimaryColor,
                    )),
                hintText: "Search",
                hintStyle: TextStyle(color: kPrimaryColor.withOpacity(.4)),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
