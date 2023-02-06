
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';
import '../../../const/styles.dart';

class RestaurantInfoWidget extends StatelessWidget {
  const RestaurantInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Brazian Steak House',
              style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColor.primary,
                  fontWeight: FontWeight.w700),
            ),
            Container(
              padding:
              EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              width: 80.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: AppColor.green,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    'Open',
                    style: TextStyle(
                        color: AppColor.green,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xFFf0f4f7),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: AppColor.subTiteColor,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  '91 Parker St, Maxico',
                  style: AppStyle.normalStyle.copyWith(
                    color: AppColor.subTiteColor,
                  ),
                ),
              ],
            ),
            Container(
              child: Text(
                'View Timing',
                style: TextStyle(
                    color: AppColor.welcomeColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
