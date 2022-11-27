import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodio/const/colors.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController inputController;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.formKey,
    required this.inputController,
    this.obscureText = false,
    this.onTap,
    this.onSubmitted,
  }) : super(key: key);
  final String? hintText;
  final Widget? prefixIcon;
  final Key? formKey;
  final bool obscureText;
  final Function()? onTap;
  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: const Offset(12, 26),
                    blurRadius: 50,
                    spreadRadius: 0,
                    color: Colors.grey.withOpacity(.1)),
              ],
            ),
            child: TextField(
              onTap: onTap,
              onSubmitted: onSubmitted,
              obscureText: obscureText,
              key: formKey,
              controller: inputController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                labelStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                hintText: hintText,
                hintStyle: TextStyle(color: Color(0xff646464), fontSize: 13.sp),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xfff0f0f0), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColor.welcomeColor, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffefefef), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
