import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/views/view.dart';

class NearbyRestaurants extends StatelessWidget {
  const NearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (i) {
          var restaurant = restaurants[i];
          return Container(
            height: 200.h,
            width: 150.w,
            color: kPrimary,
          );
        }),
      ),
    );
  }
}
