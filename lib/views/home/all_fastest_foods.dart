import 'package:flutter/material.dart';
import 'package:foodly/views/view.dart';

class AllFastestFoods extends StatelessWidget {
  const AllFastestFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: const Text(
          "All Fastest Foods",
          style: AppStyle(13, color: kGray, fontWeight: FontWeight.w600),
        ),
      ),
      body: const Center(
        child: Text("All Fastest Foods"),
      ),
    );
  }
}
