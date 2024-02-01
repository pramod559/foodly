import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/views/view.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondary,
        title: const Text(
          "Nearby Restaurants",
          style: AppStyle(
              fontSize: 13, color: kLightWhite, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: BackGroundController(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(12.h),
            child: ListView(
              children: List.generate(restaurants.length, (i) {
                var restaurant = restaurants[i];
                print(restaurant);
                return Center(
                  child: Text(restaurant['title']),
                );

                //     RestaurantTile(
                //   restaurant: restaurant,
                // );
                //FoodWidget(image: image, title: title], time: time, price: price)
              }),
            ),
          ),
        ),
      ),
    );
  }
}
