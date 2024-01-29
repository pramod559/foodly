import 'package:flutter/material.dart';
import 'package:foodly/views/view.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.3,
          backgroundColor: kOffWhite,
          title: const Text("Recommendations"),
        ),
        body: const Center(
          child: Text(
            "Recommendations",
            style: AppStyle(13, color: kGray, fontWeight: FontWeight.w600),
          ),
        ));
  }
}
