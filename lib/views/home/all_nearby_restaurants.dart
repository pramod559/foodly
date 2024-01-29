import 'package:flutter/material.dart';
import 'package:foodly/views/view.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: const Text(
          "All Nearby Restaurant",
          style: AppStyle(13,
              fontSize: 13, color: kGray, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: BackGroundController(
          color: Colors.white,
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
    );
  }
}
