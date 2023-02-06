
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';

class MyAppBarWidget extends StatelessWidget {
  const MyAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      child: Align(
        alignment: AlignmentDirectional.topStart,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child:  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColor.primary,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ),
              // InkWell(
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              //   child: const Padding(
              //     padding: EdgeInsets.symmetric(horizontal: 10),
              //     child: CircleAvatar(
              //       radius: 20,
              //       backgroundColor: AppColor.primary,
              //       child: Icon(
              //         Icons.favorite,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/real/bakery.png',
            ),
            fit: BoxFit.fill,
          )),
    );
  }
}
