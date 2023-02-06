
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';

class OffersCardWdget extends StatelessWidget {
  const OffersCardWdget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      child: ListView.separated(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(
          vertical: 5.h,
        ),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: [8, 4],
            strokeWidth: 2,
            color: AppColor.subTiteColor,
            radius: Radius.circular(6),
            padding: EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/virtual/offer_icon_filled.png',
                          width: 25.w,
                          height: 25.h,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '50% OFF',
                          style: TextStyle(
                              color: AppColor.primary,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Text('TRYNEW',
                            style: TextStyle(
                                color: AppColor.primary,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text('|',
                            style: TextStyle(
                                color: AppColor.primary,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text('Valid till Jan 31,2022',
                            style: TextStyle(
                                color: AppColor.primary,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
      ),
    );
  }
}
