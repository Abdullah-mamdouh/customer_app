

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';


class RecentItemCard extends StatelessWidget {
  const RecentItemCard({
    Key? key,
    @required String? name,
    @required Image? image,
    @required IconData? icon,
    @required Color? color,
  })  : _name = name,
        _image = image,
        _icon = icon,
        _color=color,
        super(key: key);

  final String? _name;
  final Image? _image;
  final IconData? _icon;
  final Color? _color;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: 90.w,
            height: 80.h,
            child: _image,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            height: 80.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _name!,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            _icon,
                            size: 25,
                            color: _color,

                          )),
                    ],
                  ),
                ),
                Text(
                  "gugol",
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.subTiteColor),
                ),
                Expanded(child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColor.welcomeColor,
                      size: 20,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      "0 (0.0)",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),)
              ],
            ),
          ),
        )
      ],
    );
  }
}