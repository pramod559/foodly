import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/views/categories/category_page.dart';
import 'package:foodly/views/view.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({
    super.key,
    required this.category,
  });

//  final Map<String, dynamic> category;
  var category;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => const CategoryPage(),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 900));
      },
      leading: CircleAvatar(
        radius: 18.r,
        backgroundColor: kGrayLight,
        child: Image.network(category["imageUrl"], fit: BoxFit.contain),
      ),
      title: ReusableText(
        text: category['title'],
        style: const AppStyle(
          
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
  }
}
