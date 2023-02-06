
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';

class ReviewsAndServiceWidget extends StatelessWidget {
  const ReviewsAndServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ButtonWidget(title: '5 Reviews', icon: FontAwesomeIcons.commentDots),
        ButtonWidget(title: 'Services', icon: Icons.room_service_outlined),

      ],
    );
  }
}

class ButtonWidget extends StatelessWidget {
  ButtonWidget({Key? key, required this.title, required this.icon}) : super(key: key);

  String title;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          width: Helper.getScreenWidth(context) * 0.4,
          height: 35.0.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$title',
                style: TextStyle(
                  color: AppColor.primary,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              FaIcon(icon,
                  size: 22, color: Color(0xFFff9b7b))
            ],
          ),
        ),
      ),
    );
  }
}

