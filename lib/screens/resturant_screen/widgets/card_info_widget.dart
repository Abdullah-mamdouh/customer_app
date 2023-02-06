
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconWidget(icon: Icons.location_on_outlined, subTitle: '22 km'),
          IconWidget(icon: Icons.access_time, subTitle: '25 min'),
          IconWidget(icon: Icons.star_border, subTitle: '5.0 Rate'),
          IconWidget(icon: Icons.share_rounded, subTitle: 'Share'),
        ],
      ),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(
          8,
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(2, 2),
            blurRadius: 4.0,
            spreadRadius: 2, // Shadow position
          ),
        ],
      ),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(8),
      //   border: Border.all(
      //     color: AppColor.secondary,
      //     width: 0.5,
      //   ),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Color.fromRGBO(0, 0, 0, 0.25),
      //       offset: Offset(2, 2),
      //       blurRadius: 2.0,
      //       spreadRadius: 4, // Shadow position
      //     ),
      //   ],
      // ),
    );
  }
}

class IconWidget extends StatelessWidget {
  IconWidget({Key? key, required this.icon, required this.subTitle}) : super(key: key);
  IconData icon;
  String subTitle;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          Icon(icon,
              color: Color(0xFFff9b7b), size: 30.h),
          SizedBox(
            height: 8.h,
          ),
          Text(
            '$subTitle',
            style: TextStyle(
              color: AppColor.primary,
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

