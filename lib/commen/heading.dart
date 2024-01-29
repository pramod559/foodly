import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:foodly/views/view.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: ReusableText(
                text: text,
                style: const AppStyle(16, color: kDark, fontWeight: FontWeight.bold)),
          ),
          GestureDetector(
            onTap: onTap,
            child: Icon(
              AntDesign.appstore1,
              color: kSecondary,
              size: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
