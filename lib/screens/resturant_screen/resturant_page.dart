import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodio/const/colors.dart';
import 'package:foodio/const/styles.dart';
import 'package:foodio/screens/home_screen/widgets/popular_food.dart';
import 'package:foodio/screens/resturant_screen/widgets/offers_card_widget.dart';
import 'package:foodio/screens/resturant_screen/widgets/pizza_types_widget.dart';
import 'package:foodio/screens/resturant_screen/widgets/restaurant_info_widget.dart';
import 'package:foodio/screens/resturant_screen/widgets/switch_button_widget.dart';
import 'package:foodio/utils/helper.dart';
import 'package:foodio/utils/widgets/divider_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'widgets/app_bar_widget.dart';
import 'widgets/card_info_widget.dart';
import 'widgets/reviews_an_services_widget.dart';
import 'widgets/tab_bar_widget.dart';

class ResturantPage extends StatefulWidget {
  const ResturantPage({Key? key}) : super(key: key);

  @override
  State<ResturantPage> createState() => _ResturantPageState();
}

class _ResturantPageState extends State<ResturantPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300),
        child: MyAppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              RestaurantInfoWidget(),
              SizedBox(
                height: 20.h,
              ),
              CardInfoWidget(),
              SizedBox(
                height: 20.h,
              ),
              ReviewsAndServiceWidget(),
              SizedBox(
                height: 20.h,
              ),
              OffersCardWdget(),
              SizedBox(
                height: 5.h,
              ),
              Expanded(child: TabBarWidget()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50.h,
        color: Color(0xFFe8073f),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            //foregroundColor: Colors.white,
            backgroundColor: AppColor.welcomeColor,
            //Color(0xFFce1745),
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "0 Items",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Text(
                    "|",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Text(
                    "T0",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "VIEW CART",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 20,
                  )
                ],
              ),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
