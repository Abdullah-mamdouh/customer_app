
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';
import '../../resturant_screen/resturant_page.dart';

class NewArrivalsWidget extends StatefulWidget {
  const NewArrivalsWidget({Key? key}) : super(key: key);

  @override
  State<NewArrivalsWidget> createState() => _NewArrivalsWidgetState();
}

class _NewArrivalsWidgetState extends State<NewArrivalsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics()),
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return NewArrivalsCard(
          name: "Hashim",
          image: "${Helper.getAssetName("pizza4.png", "real")}",
          location: '20 Pavelian Park',
          rate: "0 (0)",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ResturantPage()),
            );
          },
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15.sp,
            color: Colors.black,
          ),
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                "0 (0)",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}


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
              height: 220.h,
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

