import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodio/screens/orders_screen/widgets/outline_button_widget.dart';

import '../../const/colors.dart';
import 'package:foodio/screens/home_screen/widgets/app_drawer_widget.dart';

import '../../utils/routes/routes.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);
  static const String routeName = '/order';

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(EvaIcons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(
          'My Orders',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.search);
            },
            alignment: Alignment(6, 0.0),
            icon: const Icon(
              Icons.search,
              color: Colors.black,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            alignment: Alignment(3, 0.0),
            icon: const Icon(
              Icons.map_outlined,
              color: Colors.black,
              size: 25,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 5.w),
            child: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.card);
                },
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 25,
                ),
            ),
          ),
        ],
      ),
      body: ListView.separated(
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Container(
                //height: 200.h,
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      offset: Offset(0, 2),
                      blurRadius: 2.0,
                      spreadRadius: 1, // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/real/pizza2.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ORDER ID:',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF9191a3)),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'uhvsg iisj kiygs mlojs',
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'The Basil Pizza',
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Order Piaced | Aug 5, 2022',
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF555354),
                                //Color(0xFF716f70),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'T40.00',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.welcomeColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlineButtonWidget(buttonName: 'REORDER', outlineColor: AppColor.welcomeColor),
                        OutlineButtonWidget(buttonName: 'RATE ORDER', outlineColor: AppColor.primary),
                      ],
                    ),
                  ],
                ),
              ));
        },
        separatorBuilder: (context, index) => SizedBox(
          height: 1.h,
        ),
      ),
    );
  }
}
