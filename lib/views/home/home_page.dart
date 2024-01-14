import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/commen/custom_appbar.dart';
import 'package:foodly/views/view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(130.h),
            child: Container(
              height: 70,
              child: const CustomAppbar(),
            )),
        body: SafeArea(child: CustomController(containerContent: Container())));
  }
}
