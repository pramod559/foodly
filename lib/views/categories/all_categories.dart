import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//import '../view.dart';
import 'package:foodly/views/view.dart';

import 'widgets/category_tile.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Categories',
            style: AppStyle(

              color: kGray,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: BackGroundController(
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.only(
              left: 12.w,
              top: 10.h,
            ),
            height: height,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: List.generate(categories.length, (i) {
                var category = categories[i];
                return CategoryTile(category: category);
              }),
            ),
          ),
        ));
  }
}
