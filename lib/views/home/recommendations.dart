import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/views/home/widgets/food_tile.dart';
import 'package:foodly/views/view.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSecondary,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kSecondary,
          title: const Text(
            "Recommendations",
            style: AppStyle(
                fontSize: 13, color: kLightWhite, fontWeight: FontWeight.w600),
          ),
        ),
        body: BackGroundController(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(12.h),
            child: ListView(
              children: List.generate(foods.length, (i) {
                var food = foods[i];
                return foodTile(food: food);
              }),
            ),
          ),
        ));
  }
}
