import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 34.h),
          width: 375.w,
          child: Stack(
            children: [
              PageView(
                children: [
                  page(1, context, "Next", 'Welcome to Little Dreamers',
                      'Connecting Young Carers across Australia', "Image 1"),
                  page(
                      2,
                      context,
                      "Next",
                      'Join the Community',
                      'Chat with peers and connect with team leaders',
                      "Image 1"),
                  page(
                      3,
                      context,
                      "Next",
                      'Explore and Grow',
                      'Journaling, videos and more to support your journey',
                      "Image 1")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget page(int index, BuildContext context, String buttonName, String title,
      String subTitle, String imagePath) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Text(imagePath),
        ),
        Container(
            child: Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.w500),
        )),
        Container(
            width: 375.w,
            padding: EdgeInsets.only(left: 30.w, right: 30.w),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal),
            )),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFF000000),
                width: 2.5,
                style: BorderStyle.solid,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15.w),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.blue,
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: Offset(10, 9))
              ]),
          margin: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
          width: 325.w,
          height: 50.h,
          child: Center(
            child: Text(
              buttonName,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
            ),
          ),
        )
      ],
    );
  }
}
