import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/commen/custom_appbar.dart';
import 'package:foodly/commen/heading.dart';
import 'package:foodly/views/home/All_Nearby_Restaurants.dart';
import 'package:foodly/views/home/all_fastest_foods.dart';
import 'package:foodly/views/home/recommendations.dart';
import 'package:foodly/views/home/widgets/category_list.dart';
import 'package:foodly/views/home/widgets/food_list.dart';
import 'package:foodly/views/home/widgets/nearby_restaurants_list.dart';
import 'package:foodly/views/view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(130.h),
            child: const SizedBox(
              height: 70,
              child: CustomAppbar(),
            )),
        body: SafeArea(
            child: CustomController(
          containerContent: Column(
            children: [
              const CategoryList(),
              Heading(
                text: "Nearby Restaurants",
                onTap: () {
                  Get.to(() => const AllNearbyRestaurants(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 900));
                },
              ),
              const NearbyRestaurants(),
              Heading(
                text: "Try Something New",
                onTap: () {
                  Get.to(() => const Recommendations(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 900));
                },
              ),
              const FoodsList(),
              Heading(
                text: "Food closer to you",
                onTap: () {
                  Get.to(() => const AllFastestFoods(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 900));
                },
              ),
              const FoodsList(),
            ],
          ),
        )));
  }
}
