import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 

import 'package:little_dreamers/pages/welcome/bloc/welcome_bloc.dart';
import 'package:little_dreamers/pages/welcome/bloc/welcome_events.dart';
import 'package:little_dreamers/pages/welcome/bloc/welcome_state.dart';
import 'package:little_dreamers/pages/welcome/components/colors.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(body:
          BlocBuilder<WelcomeBloc, WelcomeState>(builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(top: 34.h),
          width: 375.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                controller: pageController,
                onPageChanged: (index) {
                  state.page = index;
                  BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
                  if (kDebugMode) {
                    print('the index: $index');
                  }
                },
                children: [
                  page(
                      1,
                      context,
                      "Next",
                      'Welcome to Little Dreamers',
                      ' Connecting and supporting young carers across all of Australia',
                      "assets/star-animation.png"),
                  page(
                      2,
                      context,
                      "Next",
                      'Join the Community',
                      'Chat with peers and connect with team leaders',
                      "assets/connected.png"),
                  page(
                      3,
                      context,
                      "Get Started",
                      'Explore and Grow',
                      'Journaling, videos and more to support your journey',
                      "assets/video.png")
                ],
              ),
              Positioned(
                  bottom: 100.h,
                  child: DotsIndicator(
                    position: state.page,
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                        color: Colors.grey,
                        activeColor: AppColors.primary,
                        size: const Size.square(8.0),
                        activeSize: const Size(18.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3))),
                  ))
            ],
          ),
        );
      })),
    );
  }

  Widget page(int index, BuildContext context, String buttonName, String title,
      String subTitle, String imagePath) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Text(
                  title,
                  style: TextStyle(
          color: Colors.black,
          fontSize: 24.sp,
          fontWeight: FontWeight.w500),
                ),
        Container(
            width: 375.w,
            padding: EdgeInsets.only(left: 30.w, right: 30.w),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.5),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal),
            )),
        GestureDetector(
          onTap: () {
            if (index < 3) {
              pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.decelerate);
            } else {
              //Jummp tp new page
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));

                     Navigator.of(context).pushNamedAndRemoveUntil("signInPage", (route)=>false);
            }
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.secondary,
                  width: 2.5,
                  style: BorderStyle.solid,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.w),
                ),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.5),
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
          ),
        )
      ],
    );
  }
}
