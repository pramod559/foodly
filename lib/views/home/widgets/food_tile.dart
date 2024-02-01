// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:foodly/views/view.dart';

// class foodTile extends StatelessWidget {
//   final dynamic restaurant;

//   RestaurantTile({Key? key, this.restaurant}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;

//     return GestureDetector(
//       onTap: () {},
//       child: Container(
//         margin: EdgeInsets.only(bottom: 8.h),
//         height: 70.h,
//         width: width,
//         decoration: BoxDecoration(
//           color: kOffWhite,
//           borderRadius: BorderRadius.circular(9.r),
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(12.r),
//               child: SizedBox(
//                 width: 70.w,
//                 height: 70.h,
//                 child: Image.network(
//                   restaurant["imageUrl"],
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             SizedBox(width: 10.w),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 ReusableText(
//                   text: restaurant['title'],
//                   style: const AppStyle(
//                     11,
//                     fontSize: 11,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 RatingBarIndicator(
//                   rating: 5,
//                   itemCount: 5,
//                   itemSize: 12.r,
//                   itemBuilder: (context, i) {
//                     return const Icon(
//                       Icons.star,
//                       color: kSecondary,
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:foodly/views/view.dart';

class foodTile extends StatelessWidget {
  final dynamic food;

  foodTile({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 8.h),
              height: 70.h,
              width: width,
              decoration: BoxDecoration(
                color: kOffWhite,
                borderRadius: BorderRadius.circular(9.r),
              ),
              child: Container(
                padding: EdgeInsets.all(4.r),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Stack(children: [
                          SizedBox(
                            width: 70.w,
                            height: 70.h,
                            child: Image.network(food["imageUrl"],
                                fit: BoxFit.cover),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 6.w,
                                bottom: 2.h,
                              ),
                              color: kGray.withOpacity(0.6),
                              height: 16.h,
                              width: width,
                              child: RatingBarIndicator(
                                rating: 5,
                                itemCount: 5,
                                itemSize: 12.r,
                                itemBuilder: (context, i) {
                                  return const Icon(
                                    Icons.star,
                                    color: kSecondary,
                                  );
                                },
                              ),
                            ),
                          )
                        ]),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                                text: food['title'],
                                style: const AppStyle(
                                    fontSize: 11,
                                    color: kDark,
                                    fontWeight: FontWeight.w400)),
                            ReusableText(
                                text: food['Delivery time: ${food['time']}'],
                                style: const AppStyle(
                                    fontSize: 11,
                                    color: kGray,
                                    fontWeight: FontWeight.w400)),
                            SizedBox(
                                width: width * 0.7,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: food['additives'].length,
                                  itemBuilder: (context, i) {
                                    var additive = food['additives'][i];
                                    return Container(
                                      margin: EdgeInsets.only(right: 5.w),
                                      decoration: BoxDecoration(
                                          color: kSecondaryLight,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(9.r))),
                                      child: Center(
                                        child: Padding(
                                            padding: EdgeInsets.all(2.h),
                                            child: ReusableText(
                                              text: additive['title'],
                                              style: AppStyle(
                                                  fontSize: 8,
                                                  color: kGray,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                      ),
                                    );
                                  },
                                ))
                          ])
                      //   ],
                      // ),
                      // child:
                      ,
                      // Row(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       ClipRRect(
                      //         borderRadius: BorderRadius.circular(12.r),
                      //         child: Stack(children: [
                      //           SizedBox(
                      //             width: 70.w,
                      //             height: 70.h,
                      //             child: Image.network(restaurant["imageUrl"],
                      //                 fit: BoxFit.cover),
                      //           ),
                      //           Positioned(
                      //             bottom: 0,
                      //             child: Container(
                      //               padding: EdgeInsets.only(
                      //                 left: 6.w,
                      //                 bottom: 2.h,
                      //               ),
                      //               color: kGray.withOpacity(0.6),
                      //               height: 16.h,
                      //               width: width,
                      //               child: RatingBarIndicator(
                      //                 rating: 5,
                      //                 itemCount: 5,
                      //                 itemSize: 12.r,
                      //                 itemBuilder: (context, i) {
                      //                   return const Icon(
                      //                     Icons.star,
                      //                     color: kSecondary,
                      //                   );
                      //                 },
                      //               ),
                      //             ),
                      //           )
                      //         ]),
                      //       )
                      //     ]),
                    ]),
              )),
          Positioned(
            right: 5.w,
            top: 6.h,
            child: Container(
              width: 60.w,
              height: 19.h,
              decoration: BoxDecoration(
                  color: kPrimary, borderRadius: BorderRadius.circular(10.r)),
              child: Center(
                child: ReusableText(
                    text: food['price'].toStringAsFixed(2),
                    style: AppStyle(
                        fontSize: 12,
                        color: kLightWhite,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Positioned(
            right: 75.w,
            top: 6.h,
            child: Container(
              width: 19.w,
              height: 19.h,
              decoration: BoxDecoration(
                  color: kSecondary, borderRadius: BorderRadius.circular(10.r)),
              child: Center(
                  child: Icon(
                MaterialCommunityIcons.cart_plus,
                size: 15.h,
                color: kLightWhite,
              )),
            ),
          )
        ],
      ),
    );
  }
}
