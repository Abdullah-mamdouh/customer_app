
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';
import '../../resturant_screen/resturant_page.dart';
import 'new_arrivals_widget.dart';

class PopularRestaurantWidget extends StatefulWidget {
  const PopularRestaurantWidget({Key? key}) : super(key: key);

  @override
  State<PopularRestaurantWidget> createState() => _PopularRestaurantWidgetState();
}

class _PopularRestaurantWidgetState extends State<PopularRestaurantWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      width: double.infinity,
      padding: EdgeInsets.only(left: 10.w),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return NewArrivalsCard(
            name: "Flavours Restaurant",
            image: "${Helper.getAssetName("bakery.png", "real")}",
            location:
            '6129 Prince Muhammet ebn saad Chatberii Pronce',
            //rate: "4 (3.0)",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ResturantPage()),
              );
            },
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
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
                  "4 (3.0)",
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
    );
  }
}
