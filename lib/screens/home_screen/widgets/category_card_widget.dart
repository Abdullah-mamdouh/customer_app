import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    @required Image? image,
    @required String? name,
    @required Function()? onTap,
  })  : _image = image,
        _name = name,
        _onTap = onTap,
        super(key: key);

  final String? _name;
  final Image? _image;
  final void Function()? _onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: GestureDetector(
            onTap: _onTap,
            child: Container(
                width: 100.w,
                height: 90.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 6.w, color: AppColor.welcomeColor),
                ),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: _image,
                  ),
                )),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          _name!,
          style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
      ],
    );
  }
}
