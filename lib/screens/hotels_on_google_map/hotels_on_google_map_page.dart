
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/colors.dart';
import 'widget/hotels_on_google_map_card_widget.dart';
import 'widget/hotels_on_google_map_widget.dart';

class HotelsOnMapPage extends StatefulWidget {
  const HotelsOnMapPage({Key? key}) : super(key: key);
  @override
  State<HotelsOnMapPage> createState() => _HotelsOnMapPageState();
}

class _HotelsOnMapPageState extends State<HotelsOnMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      // ),
///
      body: Stack(
        children: [

          Positioned(
            top: -10,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child:  Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColor.primary,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.orange,
                    size: 25,
                  ),
                ),
              ),
            ),
          ),
          HotelsOnGoogleMapWidget(),
          Positioned(
            left: 10,
            right: 10,
            bottom: 18.h,
            child: SizedBox(
                height: 110.h,
                width: MediaQuery.of(context).size.width * 0.9,
                child: HotelsOnGoogleMapCardWidget()),
          ),
        ],
      ),
    );
  }
}
