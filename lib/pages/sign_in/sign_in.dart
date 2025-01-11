import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:little_dreamers/pages/welcome/components/colors.dart';
import 'package:little_dreamers/pages/welcome/components/components.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController controller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 46.h,
                ),
                Text("Welcome Back",
                    style: TextStyle(
                        color: AppColors.secondary,
                        fontSize: 27.sp,
                        fontWeight: FontWeight.w800)),
                Text("Enter your credentials to continue ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.normal)),
                Container(
                  margin: EdgeInsets.only(top: 46.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                          controller: controller,
                          hintText: "Email",
                          leadingIcon: LineAwesomeIcons.user_circle_solid),
                      SizedBox(
                        height: 15.h,
                      ),
                      CustomPasswordField(
                          controller: passwordController,
                          hintText: "Password",
                          leadingIcon: LineAwesomeIcons.lock_solid),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomButton(title: "Sign In"),
                      ThirdPartyButton(
                        title: "Sign In using Google",
                        shadowColor: AppColors.secondary,
                        borderColor: Colors.black,
                        surfaceColor: Colors.white,
                        textColor: Colors.black,
                        iconColor: Colors.black,
                        icon: LineAwesomeIcons.google,
                      ),
                      ThirdPartyButton(
                        title: "Sign In using Facebook",
                        shadowColor: AppColors.surface,
                        borderColor: Colors.blue,
                        surfaceColor: Colors.blue,
                        textColor: Colors.white,
                        iconColor: Colors.white,
                        icon: LineAwesomeIcons.facebook_f,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
