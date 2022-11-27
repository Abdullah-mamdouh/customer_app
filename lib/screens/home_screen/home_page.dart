import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodio/const/styles.dart';
import 'package:foodio/screens/card_screen/card_page.dart';
import 'package:foodio/screens/home_screen/widgets/popular_food.dart';
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
                Navigator.pushReplacementNamed(context, Routes.search);
              },
              alignment: Alignment(8, 0.0),
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HotelsOnMapPage()),
                );

              },
              alignment: Alignment(4, 0.0),
              icon: Icon(
                Icons.map_outlined,
                color: Colors.black,
                size: 25,
              )),
          Padding(padding: EdgeInsets.only(right: 5.w), child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.card);
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 25,
              )),),
        ],
      ),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
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
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: SizedBox(
                        //width: 266,
                        child: DropdownButton(
                          value: "Pavelian Park",
                          items: [
                            DropdownMenuItem(
                              child: Row(
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
                                    '20 Pavelian Park de moad',
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
                            Helper.getAssetName(
                                "dropdown_filled.png", "virtual"),
                          ),
                          style: Helper.getTheme(context).headline4,
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: Text("Hello Mohamed,",
                        style: TextStyle(
                            color: AppColor.welcomeColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Find your food",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w700)),
                        //Image.asset(Helper.getAssetName("cart.png", "virtual"))
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding:  EdgeInsets.symmetric(
                  //     horizontal: 20,
                  //   ),
                  //   child: Text("Find your food" ,style: TextStyle(
                  //       color: AppColor.heederColor,
                  //       fontSize: 22.sp,
                  //       fontWeight: FontWeight.w700
                  //   )),
                  // ),
                  SizedBox(
                    height: 20.h,
                  ),
                  /*SearchBar(
                    title: "Search Food",
                  ),
                  */
                  /*SizedBox(
                    height: 20,
                  ),*/
                  //_buildSlider(context),
                  Container(
                    height: 170.h,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 10.w),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),                        scrollDirection: Axis.horizontal,
                      // padding: const EdgeInsets.symmetric(
                      //   vertical: 5,
                      // ),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding:  EdgeInsets.symmetric(horizontal:10.w),
                          child: Container(
                            height: 170.h,
                            width: 280.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/real/hamburger.jpg'),                          )
                            ),
                          ),
                        );
                      },
                      // separatorBuilder: (context, index) =>  SizedBox(
                      //   width: 15.w,
                      // ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
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
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("hamburger2.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Offers",
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  CategoryRestaurantsPage()),
                              );
                            },
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("rice2.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Sri Lankan",
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("fruit.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Italian",
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("rice.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Indian",
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Food Nearby",
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
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 95.h,
                    width: double.infinity,
                    child: PopularFood(),
                  ),

/*
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName("western.png", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Minute by tuk tuk",
                  ),
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName("breakfast.png", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Cafe de Noir",
                  ),
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName(""
                          "bakery.png", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Bakes by Tella",
                  ),
*/
                  SizedBox(
                    height:5.h,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                    child: Row(
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
                  ),
                  // SizedBox(
                  //   height: 5.h,
                  // ),
                  //
                  // Container(
                  //   height: 210.h,
                  //   width: double.infinity,
                  //   padding: const EdgeInsets.only(left: 20),
                  //   child: SingleChildScrollView(
                  //     scrollDirection: Axis.horizontal,
                  //     child: Row(
                  //       children: [
                  //         SizedBox(width: 20.w,),
                  //         MostPopularCard(
                  //           image: Image.asset(
                  //             Helper.getAssetName("pizza4.png", "real"),
                  //             fit: BoxFit.cover,
                  //           ),
                  //           name: "Cafe De Bambaa",
                  //         ),
                  //         SizedBox(
                  //           width: 30,
                  //         ),
                  //         MostPopularCard(
                  //           name: "Burger by Bella",
                  //           image: Image.asset(
                  //             Helper.getAssetName("dessert3.png", "real"),
                  //             fit: BoxFit.cover,
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Container(
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
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Offers For You",
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
                  ),
                  Container(
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
                            name: "Red Chili Restaurant",
                            image:
                                "${Helper.getAssetName("pizza4.png", "real")}",
                            location: 'Nasr Sp Bus Stand, Chatberii Pronce',
                            rate: "0 (0)",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  ResturantPage()),
                              );
                            },
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                              color: Colors.black,
                            ),
                            widget: Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "10off",
                                    style: TextStyle(
                                      color: AppColor.welcomeColor,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Row(
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
                                        "0 (0.0)",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                    child: Row(
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
                  ),
                  Container(
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
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "All Restaurant",
                      style: Helper.getTheme(context).headline5!.copyWith(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            //fontFamily: 'Metropolis',
                          ),
                    ),
                  ),

                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    padding:  EdgeInsets.symmetric(
                      horizontal: 20.w,
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
                  )
                ],
              ),
            ),
          ),
          /*Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                home: true,
              )),*/
        ],
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

class RecentItemCard extends StatelessWidget {
  const RecentItemCard({
    Key? key,
    @required String? name,
    @required Image? image,
    @required IconData? icon,
    @required Color? color,
  })  : _name = name,
        _image = image,
        _icon = icon,
  _color=color,
        super(key: key);

  final String? _name;
  final Image? _image;
  final IconData? _icon;
  final Color? _color;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: 90.w,
            height: 80.h,
            child: _image,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            height: 80.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _name!,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            _icon,
                            size: 25,
                            color: _color,

                          )),
                    ],
                  ),
                ),
                Text(
                 "gugol",
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.subTiteColor),
                ),
                Expanded(child: Row(
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
                      "0 (0.0)",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),)
              ],
            ),
          ),
        )
      ],
    );
  }
}

class MostPopularCard extends StatelessWidget {
  const MostPopularCard({
    Key? key,
    @required String? name,
    @required Image? image,
  })  : _name = name,
        _image = image,
        super(key: key);

  final String? _name;
  final Image? _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 300,
            height: 200,
            child: _image,
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              _name!,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: AppColor.primary),
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              Helper.getAssetName("star_filled.png", "virtual"),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "4.9",
              style: TextStyle(
                color: AppColor.orange,
              ),
            )
          ],
        ),
        Row(
          children: [
            Text(
              "Cafe",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColor.primary),
            ),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                ".",
                style: TextStyle(
                  color: AppColor.orange,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text("Western Food"),
          ],
        )
      ],
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

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
    @required String? name,
    @required Image? image,
  })  : _image = image,
        _name = name,
        super(key: key);

  final String? _name;
  final Image? _image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 200, width: double.infinity, child: _image),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      _name!,
                      style: Helper.getTheme(context).headline3,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName("star_filled.png", "virtual"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColor.orange,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("(124 ratings)"),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Cafe"),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Western Food"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    @required Image? image,
    @required String? name,
    @required Function()? onTap,
  })  : _image = image,
        _name = name,
        _onTap = onTap,
        super(key: key);

  final String? _name;
  final Image? _image;
  final void Function()? _onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: GestureDetector(
            onTap: _onTap,
            child:Container(
              width: 100.w,
              height: 90.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 6.w, color: AppColor.welcomeColor),
              ),
              child: Padding(
                padding: EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: _image,
                ),
              )),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          _name!,
          style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
      ],
    );
  }
}
