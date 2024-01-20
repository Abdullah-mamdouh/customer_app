
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';
import '../../resturant_screen/resturant_page.dart';
import '../home_page.dart';
import 'new_arrivals_card_widget.dart';

class ArrivalsWidget extends StatefulWidget {
  const ArrivalsWidget({Key? key}) : super(key: key);

  @override
  State<ArrivalsWidget> createState() => _ArrivalsWidgetState();
}

class _ArrivalsWidgetState extends State<ArrivalsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "New Arrivals",
              style: Helper.getTheme(context).headline5!.copyWith(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                //fontFamily: 'Metropolis',
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "View all",
                  style: TextStyle(
                      color: AppColor.welcomeColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),

        Container(
          height: 230.h,
          width: double.infinity,
          //padding: EdgeInsets.only(left: 10.w),
          child: ListView.builder(
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
          ),
        ),
      ],
    );
  }
}