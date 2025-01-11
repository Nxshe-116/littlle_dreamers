import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:little_dreamers/pages/welcome/components/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData leadingIcon;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(
            leadingIcon,
            color: AppColors.secondary,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.secondary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.secondary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.secondary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}

class CustomPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData leadingIcon;

  const CustomPasswordField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.leadingIcon,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: TextField(
        controller: widget.controller,
        obscureText: _isObscured,
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.leadingIcon,
            color: AppColors.secondary,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _isObscured
                  ? LineAwesomeIcons.eye_slash_solid
                  : LineAwesomeIcons.eye_solid,
              color: AppColors.secondary,
            ),
            onPressed: () {
              setState(() {
                _isObscured = !_isObscured;
              });
            },
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors
                  .secondary, // Set the border color to secondary color
              width: 2.0, // Set border thickness to 1.0
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.secondary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.secondary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;

  const CustomButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2.5,
            style: BorderStyle.solid,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary,
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(0, 5),
            ),
          ],
        ),
        margin: EdgeInsets.only(top: 100, left: 20.0, right: 20.0),
        width: 900.w,
        height: 60.0,
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}

class ThirdPartyButton extends StatelessWidget {
  final String title;
  final Color shadowColor;
  final Color borderColor;
  final Color surfaceColor;
  final Color textColor;
  final IconData icon;
  final Color iconColor;

  const ThirdPartyButton({
    super.key,
    required this.title,
    required this.shadowColor,
    required this.borderColor,
    required this.surfaceColor,
    required this.textColor,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 2.5,
            style: BorderStyle.solid,
          ),
          color: surfaceColor,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(0, 5),
            ),
          ],
        ),
        margin: EdgeInsets.only(top: 20, left: 20.0, right: 20.0),
        width: 900.w,
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30,
              color: iconColor,
            ),
            SizedBox(
              width: 9.w,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                  color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
