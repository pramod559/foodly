import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../view.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Categories',
            style: AppStyle(
              12,
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
                return ListTile(
                  leading: CircleAvatar(
                    radius: 18.r,
                    backgroundColor: kGrayLight,
                    child: Image.network(category["imageUrl"],
                        fit: BoxFit.contain),
                  ),
                  title: ReusableText(
                    text: category['title'],
                    style: AppStyle(
                      12,
                      color: kGray,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: kGray,
                    size: 12.r,
                  ),
                );
              }),
            ),
          ),
        ));
  }
}
