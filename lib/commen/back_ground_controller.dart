import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';

class BackGroundController extends StatelessWidget {
  const BackGroundController(
      {super.key, required this.child, required this.color});

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          image: const DecorationImage(
              image: AssetImage(
                "restaurant_bk.png",
              ),
              fit: BoxFit.cover,
              opacity: .7),
        ));
  }
}
