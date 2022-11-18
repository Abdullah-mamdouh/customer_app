
import 'package:flutter/material.dart';
import 'package:foodio/const/colors.dart';

class DividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColor.placeholder,
      height: 0,
      thickness: 0.2,
    );
  }
}