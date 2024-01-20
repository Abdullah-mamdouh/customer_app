import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodio/const/colors.dart';
import 'package:foodio/screens/authentication_sreen/login_page.dart';
import 'package:foodio/screens/authentication_sreen/singup_page.dart';
import 'package:foodio/screens/home_screen/home_page.dart';

import '../../utils/widgets/main_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: 70.w,
                        height: 45.0.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35.0),
                            border: Border.all(
                              color: AppColor.welcomeColor,
                            )),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              fixedSize: Size(60, 50),
                              backgroundColor: Colors.white,
                              shadowColor: Colors.black,
                              elevation: 0,
                              side: BorderSide(
                                  color: AppColor.welcomeColor, width: 0.2)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          child: Text(
                            'Skip',
                            style: TextStyle(
                                color: AppColor.welcomeColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          ///
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 90.h,
              ),
              Center(
                child: Container(
                  width: 180.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/real/res.png'),
                      )),
                ),
              ),
              Text(
                "Welcome to FOODIES",
                style: TextStyle(
                    color: AppColor.welcomeColor,
                    //Color(0xffe8073f),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Order food from restaurants around",
                style: TextStyle(
                    color: Colors.black,
                    //Color(0xffe8073f),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400),
              ),
              Center(
                child: Text(
                  "you and track food in real-time",
                  style: TextStyle(
                      color: Colors.black,
                      //Color(0xffe8073f),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                child: MainButton(
                  text: 'Log In',
                  backgroundColor: AppColor.welcomeColor,
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginView()),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                child: SizedBox(
                  height: 38.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                          side: BorderSide(
                            color: AppColor.welcomeColor,
                          )),
                      elevation: 0,
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.welcomeColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
