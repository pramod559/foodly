import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/views/categories/all_categories.dart';
import 'package:foodly/views/view.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    super.key,
    // required this.controller,
    this.category,
  });

  // final CategoryController controller;
  //final Map<String, dynamic> category;
  var category;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return GestureDetector(
      onTap: () {
        if (controller.categoryValue == category['_id']) {
          controller.updateCategory = '';
          controller.updateTitle = '';
        } else if (category['value'] == 'more') {
          Get.to(() => const AllCategories(),
              transition: Transition.fadeIn,
              duration: const Duration(milliseconds: 900));
        } else {
          controller.updateCategory = category['_id'];
          controller.updateTitle = category['title'];
        }
      },
      child: Obx(
        () => Container(
          margin: EdgeInsets.only(right: 5.w),
          padding: EdgeInsets.only(top: 4.h),
          width: width * 0.22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
                color: controller.categoryValue == category['_id']
                    ? kSecondary
                    : kOffWhite,
                width: .5.w),
          ),
          child: Column(children: [
            SizedBox(
              height: 35.h,
              child: Image.network(
                category['imageUrl'],
                fit: BoxFit.contain,
              ),
            ),
            ReusableText(
                text: category['title'],
                style: const AppStyle(8,
                    color: kDark, fontWeight: FontWeight.normal))
          ]),
        ),
      ),
    );
  }
}
