import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginOrSignupWith extends StatelessWidget {
  const LoginOrSignupWith(
      {Key? key,
      required this.tittle,
      this.backgroundColor,
      required this.icon,
      this.onPressed,
      this.style,
      this.iconColor})
      : super(key: key);
  final String tittle;
  final Color? backgroundColor;
  final Color? iconColor;
  final IconData icon;
  final TextStyle? style;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        fixedSize: Size(MediaQuery.of(context).size.width, 45.h),
        backgroundColor: backgroundColor,
        shadowColor: Colors.black,
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: iconColor),
            SizedBox(
              width: 35.w,
            ),
            Center(
              child: Text(
                tittle,
                textAlign: TextAlign.center,
                style: style,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
