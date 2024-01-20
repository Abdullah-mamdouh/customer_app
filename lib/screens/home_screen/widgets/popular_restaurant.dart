import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';
import '../../resturant_screen/resturant_page.dart';
import '../home_page.dart';
import 'new_arrivals_card_widget.dart';

class PopularRestaurant extends StatefulWidget {
  const PopularRestaurant({Key? key}) : super(key: key);

  @override
  State<PopularRestaurant> createState() => _PopularRestaurantState();
}

class _PopularRestaurantState extends State<PopularRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular Restaurant",
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
        ),
      ],
    );
  }
}