
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';
import 'recent_item_card_widget.dart';

class AllRestaurantWidget extends StatefulWidget {
  const AllRestaurantWidget({Key? key}) : super(key: key);

  @override
  State<AllRestaurantWidget> createState() => _AllRestaurantWidgetState();
}

class _AllRestaurantWidgetState extends State<AllRestaurantWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "All Restaurant",
          style: Helper.getTheme(context).headline5!.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            //fontFamily: 'Metropolis',
          ),
        ),

        SizedBox(
          height: 20.h,
        ),
        Container(
          padding:  EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.of(context)
                  //     .pushNamed(IndividualItem.routeName);
                },
                child: RecentItemCard(
                  image: Image.asset(
                    Helper.getAssetName("pizza3.png", "real"),
                    fit: BoxFit.cover,
                  ),
                  name: "Hashim",
                  color: AppColor.subTiteColor,
                  icon: Icons.favorite_border_rounded,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              RecentItemCard(
                image: Image.asset(
                  Helper.getAssetName("coffee.jpg", "real"),
                  fit: BoxFit.cover,
                ),
                name: "Hash1",
                color: AppColor.subTiteColor,
                icon: Icons.favorite_border_rounded,
              ),
              SizedBox(
                height: 15.h,
              ),
              RecentItemCard(
                  image: Image.asset(
                    Helper.getAssetName("pizza.jpg", "real"),
                    fit: BoxFit.cover,
                  ),
                  color: AppColor.subTiteColor,
                  icon: Icons.favorite_border_rounded,
                  name: "egrftt"),
              SizedBox(
                height: 15.h,
              ),
              RecentItemCard(
                image: Image.asset(
                  Helper.getAssetName("pizza.jpg", "real"),
                  fit: BoxFit.cover,
                ),
                name: "Pizza Rush Hour",
                color: AppColor.subTiteColor,
                icon: Icons.favorite_border_rounded,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
