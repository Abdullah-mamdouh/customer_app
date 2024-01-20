
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';

class OutlineButtonWidget extends StatefulWidget {
   OutlineButtonWidget({Key? key, required this.buttonName,  required this.outlineColor}) : super(key: key);

  final buttonName;
  final Color outlineColor;

  @override
  State<OutlineButtonWidget> createState() => _OutlineButtonWidgetState();
}

class _OutlineButtonWidgetState extends State<OutlineButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 140.w,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)),
          side: BorderSide(
            width: 1,
            color: widget.outlineColor,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 15,
          ),
        ),
        child: Text(
          '${widget.buttonName}',
          style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
