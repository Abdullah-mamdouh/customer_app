
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/colors.dart';

class SwitchButtonWidget extends StatefulWidget {
  const SwitchButtonWidget({Key? key}) : super(key: key);

  @override
  State<SwitchButtonWidget> createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {

  bool selectedType = false;
  @override
  Widget build(BuildContext context) {
    return  CupertinoSwitch(
      activeColor: AppColor.green,
      trackColor: AppColor.placeholder,
      value: selectedType,
      onChanged: (bool? value) {
        setState(() {
                selectedType = value!;
          },
        );
      },
    );
  }
}
