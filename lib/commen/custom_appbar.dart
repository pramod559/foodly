import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/commen/app_style.dart';
import 'package:foodly/commen/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: width,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 22.r,
                  backgroundColor: kSecondary,
                  backgroundImage: const NetworkImage(
                      'https://d326fntlu7tb1e.cloudfront.net/uploads/b5065bb8-4c6b-4eac-a0ce-86ab0f597b1e-vinci_04.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ReusableText(
                          text: "deliver to",
                          style: AppStyle(13,fontSize: 13,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        width: width * 0.65,
                        child: const Text(
                          "316 b M-block sanjay nager ghaziabad",
                          overflow: TextOverflow.ellipsis,
                          style: AppStyle(11,
                              color: kGrayLight, fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Text(
              getTimeOfDay(),
              style: const TextStyle(fontSize: 35),
            )
          ],
        ),
      ),
    );
  }
}

String getTimeOfDay() {
  DateTime now = DateTime.now();
  int hour = now.hour;
  if (hour >= 0 && hour < 12) {
    return ' 🌞 ';
  } else if (hour >= 12 && hour < 16) {
    return ' ⛅ ';
  } else {
    return ' 🌙 ';
  }
}


// ☀️🌞
