import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/views/view.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget(
      {super.key,
      required this.image,
      required this.logo,
      required this.title,
      required this.time,
      required this.rating,
      this.onTap});

  final String image;
  final String logo;
  final String title;
  final String time;
  final String rating;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: Container(
          width: width * .75,
          height: 192.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r), color: kLightWhite),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: SizedBox(
                        height: 112.h,
                        width: width * 0.8,
                        child: Image.network(image, fit: BoxFit.fitWidth),
                      ),
                    ),
                    Positioned(
                        right: 10.w,
                        top: 10.h,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.r),
                            child: Container(
                              color: kLightWhite,
                              child: Padding(
                                padding: EdgeInsets.all(2.h),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.r),
                                  child: Image.network(
                                    logo,
                                    fit: BoxFit.cover,
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                                ),
                              ),
                            )))
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        text: title,
                        style: const AppStyle(12,
                            color: kDark, fontWeight: FontWeight.w500),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const ReusableText(
                              text: 'Delivery time',
                              style: AppStyle(9,
                                  fontSize: 9,
                                  color: kGray,
                                  fontWeight: FontWeight.w500),
                            ),
                            ReusableText(
                              text: time,
                              style: const AppStyle(9,
                                  fontSize: 9,
                                  color: kDark,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                      Row(
                        children: [
                          RatingBarIndicator(
                            rating: 5,
                            itemCount: 5,
                            itemSize: 15.h,
                            itemBuilder: (BuildContext context, int index) {
                              return const Icon(
                                Icons.star,
                                color: kPrimary,
                              );
                            },
                          ),
                          SizedBox(width: 10.w),
                          ReusableText(
                            text: "+ $rating reviews and ratings",
                            style: const AppStyle(
                              9,
                              fontSize: 9,
                              color: kGray,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
