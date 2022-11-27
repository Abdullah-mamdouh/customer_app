import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchButtonWidget extends StatefulWidget {
  const SwitchButtonWidget({Key? key}) : super(key: key);

  @override
  State<SwitchButtonWidget> createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {

  bool selectedType = false;

  @override
  Widget build(BuildContext context) {
    // return Container(
    //     child: FlutterSwitch(
    //     width: 40.w,
    //     height: 17.0.h,
    //     toggleSize: 35,
    //
    //     value: selectedType,
    //     borderRadius: 30.0,
    //     padding: 1.0,
    //     inactiveToggleColor: Colors.black26,
    //     activeColor: AppColor.green,
    // inactiveColor: AppColor.placeholder,
    // //inactiveToggleColor: Color(0xFFffffff),
    // //showOnOff: true,
    // onToggle: (bool? value) {
    // setState(() {
    // selectedType = value!;
    // },
    // );},
    // ),);
    return  Transform.scale(
      scale: 0.6,
        transformHitTests: false,
        child: CupertinoSwitch(
          thumbColor: Color(0xFF9091a5),
      activeColor: AppColor.green,
      trackColor: Color(0xFFcad1d9),
      value: selectedType,
      onChanged: (bool? value) {
        setState(() {
                selectedType = value!;
          },
        );
      },
    ));
  }
}

