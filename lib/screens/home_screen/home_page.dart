import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodio/const/styles.dart';
import 'package:foodio/screens/card_screen/card_page.dart';
import 'package:foodio/screens/home_screen/widgets/all_restaurant_widget.dart';
import 'package:foodio/screens/home_screen/widgets/arrivals_widget.dart';
import 'package:foodio/screens/home_screen/widgets/popular_food.dart';
import 'package:foodio/screens/home_screen/widgets/popular_restaurant.dart';
import 'package:foodio/screens/orders_screen/orders_page.dart';
import 'package:foodio/screens/resturant_screen/category_restuarants_page.dart';
import 'package:foodio/screens/resturant_screen/resturant_page.dart';
import 'package:foodio/screens/wallet_screen/wallet_page.dart';
import 'package:foodio/screens/home_screen/widgets/app_drawer_widget.dart';

import '../../const/colors.dart';
import '../../utils/helper.dart';
import '../../utils/routes/routes.dart';
import '../../widgets/customNavBar.dart';
import '../../widgets/searchBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../hotels_on_google_map/hotels_on_google_map_page.dart';
import 'widgets/category_food.dart';
import 'widgets/food_slider.dart';
import 'widgets/offers_widget.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CarouselController buttonCarouselController = CarouselController();

  int _index = 0;

  @override
  void dispose() {
    buttonCarouselController.stopAutoPlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
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
          "Restuarants",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        //actionsIconTheme: IconThemeData(),


        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.searchScreen);
                //Navigator.pushReplacementNamed(context, Routes.search);
              },
              alignment: Alignment(8, 0.0),
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.hotels_on_map_screen);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => HotelsOnMapPage()),
                // );
              },
              alignment: Alignment(4, 0.0),
              icon: Icon(
                Icons.map_outlined,
                color: Colors.black,
                size: 25,
              )),
          Padding(
            padding: EdgeInsets.only(right: 5.w),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.cardScreen);
                  //Navigator.pushReplacementNamed(context, Routes.card);
                },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 25,
                )),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: 20,
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 20,
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         "Good morning Akila!",
              //         style: Helper.getTheme(context).headline5,
              //       ),
              //       Image.asset(Helper.getAssetName("cart.png", "virtual"))
              //     ],
              //   ),
              // ),

              // Padding(
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 20,
              //   ),
              //   child: Text("Deilivering to"),
              // ),
              DropdownButtonHideUnderline(
                child: SizedBox(
                  //width: 266,
                  child: DropdownButton(
                    value: "Pavelian Park",
                    items: [
                      DropdownMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.black,
                              size: 25,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              '20 Pavelian Park de moad  ',
                              style: TextStyle(
                                color: AppColor.welcomeColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        value: "Pavelian Park",
                      ),
                    ],
                    icon: Image.asset(
                      Helper.getAssetName("dropdown_filled.png", "virtual"),
                    ),
                    style: Helper.getTheme(context).headline4,
                    onChanged: (_) {},
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text("Hello Mohamed,",
                  style: TextStyle(
                      color: AppColor.welcomeColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: 20,
              ),
              FoodSlider(),
              const SizedBox(
                height: 20,
              ),
              CategoryFood(),
              SizedBox(
                height: 20.h,
              ),
              PopularFood(),

              SizedBox(
                height: 20.h,
              ),
              ArrivalsWidget(),
              SizedBox(
                height: 20.h,
              ),
              OffersWidget(),

              SizedBox(
                height: 20.h,
              ),
              PopularRestaurant(),

              SizedBox(
                height: 20.h,
              ),
              AllRestaurantWidget(),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildSlider(BuildContext context) {
    double h = Helper.getScreenHeight(context);
    double w = Helper.getScreenWidth(context);

    //print(categories[0].toJson());
    return Column(
      children: [
        CarouselSlider(
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            height: 150.h,
            enlargeCenterPage: true,
            viewportFraction: 0.8,
            pageSnapping: true,
            aspectRatio: 2.0,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            onPageChanged: (index, reason) {
              setState(() {
                _index = index;
              });
            },
          ),
          items: List.generate(
              4,
              (index) => Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: index == 1
                                  ? Colors.white
                                  : Color.fromRGBO(187, 187, 187, 0.33),
                              blurRadius: 5,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        height: 200.h,
                        width: (w - 20) * .7,
                        child: Image.asset(
                          'assets/images/real/western.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      /*Positioned(
                    bottom: 10,
                    left: 8,
                    child: Container(
                      padding: EdgeInsets.only(left: 8,right: 8),
                      decoration: BoxDecoration(color: AppColor.primary,
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        'Fruit',
                        style: TextStyle(
                            color: AppColor.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ),
                  */
                    ],
                  )),
        ),
        SizedBox(
          height: 5,
        ),
        /*Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            return Container(
              width: 1 == index ? 20.0 : 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                borderRadius: 1 == index
                    ? BorderRadius.circular(20)
                    : BorderRadius.all(Radius.circular(90)),
                color:
                1 == index ? AppColor.primary : Colors.white,
              ),
            );
          }).toList(),
        ),
        */
      ],
    );
  }
}
