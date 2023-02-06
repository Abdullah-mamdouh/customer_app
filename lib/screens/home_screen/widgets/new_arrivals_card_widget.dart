
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';

class NewArrivalsCard extends StatelessWidget {
  const NewArrivalsCard({
    Key? key,
    @required String? name,
    @required String? image,
    @required String? location,
    @required String? rate,
    @required TextStyle? style,
    @required Function()? onTap,
    @required Widget? widget,
  })  : _name = name,
        _image = image,
        _location = location,
        _rate = rate,
        _onTap = onTap,
        _widget = widget,
        _style = style,
        super(key: key);

  final String? _name;
  final String? _image;
  final String? _location;
  final String? _rate;
  final TextStyle? _style;
  final void Function()? _onTap;
  final Widget? _widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: _onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Container(
              width: 280.w,
              height: 210.h,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(
                  25,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(2, 2),
                    blurRadius: 8.0,
                    spreadRadius: 4, // Shadow position
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Container(
                    height: 125.h,
                    width: 280.w,
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(_image!),
                        fit: BoxFit.fill,
                      ),
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 0),
                          blurRadius: 4.0,
                          spreadRadius: 2, // Shadow position
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(top: 135.h, left: 15.w, bottom: 10.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_name!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: _style!),
                        //SizedBox(height: 3.h,),

                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: AppColor.subTiteColor,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Expanded(
                                child: Text(
                                  _location!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color(0xFF555354),
                                    //AppColor.subTiteColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //SizedBox(height: 3.h,),
                        _widget!,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}