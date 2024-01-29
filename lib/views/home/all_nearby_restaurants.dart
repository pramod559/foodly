import 'package:flutter/material.dart';
import 'package:foodly/commen/app_style.dart';
import 'package:foodly/constants/constants.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.3,
          backgroundColor: kOffWhite,
          title: const Text("All Nearby Restaurants"),
        ),
        body: const Center(
          child: Text(
            "All Nearby Restaurants",
            style: AppStyle(13, color: kGray, fontWeight: FontWeight.w600),
          ),
        ));
  }
}
