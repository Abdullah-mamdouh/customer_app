import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodio/const/colors.dart';
import 'package:foodio/const/styles.dart';
import 'package:foodio/screens/home_screen/widgets/popular_food.dart';
import 'package:foodio/screens/resturant_screen/widgets/pizza_types_widget.dart';
import 'package:foodio/screens/resturant_screen/widgets/switch_button_widget.dart';
import 'package:foodio/utils/helper.dart';
import 'package:foodio/utils/widgets/divider_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';


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
        child: Container(
          height: 200.h,
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
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
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.pop(context);
                  //   },
                  //   child: const Padding(
                  //     padding: EdgeInsets.symmetric(horizontal: 10),
                  //     child: CircleAvatar(
                  //       radius: 20,
                  //       backgroundColor: AppColor.primary,
                  //       child: Icon(
                  //         Icons.favorite,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/images/real/bakery.png',
            ),
            fit: BoxFit.fill,
          )),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Brazian Steak House',
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColor.primary,
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                    width: 80.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: AppColor.green,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          'Open',
                          style: TextStyle(
                              color: AppColor.green,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFf0f4f7),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColor.subTiteColor,

                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '91 Parker St, Maxico',
                        style: AppStyle.normalStyle!.copyWith(color: AppColor.subTiteColor, ),
                      ),
                    ],
                  ),
                  Container(
                    child: Text(
                      'View Timing',
                      style: TextStyle(
                          color: AppColor.welcomeColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height:20.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.location_on_outlined, size: 30,color: Color(0xFFff9b7b)),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            '22 km',
                            style: TextStyle(
                              color: AppColor.primary,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.access_time, size: 30,color: Color(0xFFff9b7b)),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            '25 min',
                            style: TextStyle(
                              color: AppColor.primary,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.star_border,size: 30,color: Color(0xFFff9b7b)),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            '5.0 Rate',
                            style: TextStyle(
                              color: AppColor.primary,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.share_rounded,color: Color(0xFFff9b7b),size: 30),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Share',
                            style: TextStyle(
                              color: AppColor.primary,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(2, 2),
                      blurRadius: 4.0,
                      spreadRadius: 2, // Shadow position
                    ),
                  ],
                ),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(8),
                //   border: Border.all(
                //     color: AppColor.secondary,
                //     width: 0.5,
                //   ),
                //   boxShadow: [
                //     BoxShadow(
                //       color: Color.fromRGBO(0, 0, 0, 0.25),
                //       offset: Offset(2, 2),
                //       blurRadius: 2.0,
                //       spreadRadius: 4, // Shadow position
                //     ),
                //   ],
                // ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: Helper.getScreenWidth(context)*0.4,
                        height: 35.0.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '5 Reviews',
                              style: TextStyle(
                                color: AppColor.primary,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            FaIcon(FontAwesomeIcons.commentDots,size: 22,color: Color(0xFFff9b7b))
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: Helper.getScreenWidth(context)*0.4,
                        height: 35.h,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Services',
                              style: TextStyle(
                                color: AppColor.primary,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Icon(Icons.room_service_outlined,color: Color(0xFFff9b7b),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),

              Container(
                height: 60.h,
                child: ListView.separated(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding:  EdgeInsets.symmetric(vertical: 5.h,),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return        DottedBorder(
                      borderType: BorderType.RRect,
                      dashPattern: [8, 4],
                      strokeWidth: 2,
                      color: AppColor.subTiteColor,
                      radius: Radius.circular(6),
                      padding: EdgeInsets.all(6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/virtual/offer_icon_filled.png',width: 25.w,height: 25.h,),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    '50% OFF',
                                    style: TextStyle(color: AppColor.primary, fontSize: 14.sp,fontWeight: FontWeight.w500),
                                  ),

                                ],
                              ),
                              SizedBox(height: 2.h,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('TRYNEW',
                                      style: TextStyle(
                                          color: AppColor.primary,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400
                                      )),
                                  SizedBox(width: 3.w,),

                                  Text('|',
                                      style: TextStyle(
                                          color: AppColor.primary,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400
                                      )),
                                  SizedBox(width: 3.w,),
                                  Text('Valid till Jan 31,2022',
                                      style: TextStyle(
                                          color: AppColor.primary,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400                                        )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TabBar(
                unselectedLabelColor: Color(0xFF9091a4),
                labelColor: AppColor.welcomeColor,
                indicatorColor: AppColor.welcomeColor,
                isScrollable: true,
                tabs: [
                  Tab(
                    text: 'Pizza',
                  ),
                  Tab(
                    text: 'Desserts',
                  ),
                  Tab(
                    text: 'Beverages',
                  ),
                  Tab(
                    text: 'Sideline',
                  ),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50.h,
                          padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 10.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 25.h,
                                        width: 50,
                                        child: SwitchButtonWidget(),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text('Veg', style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,color: Color(0xFF9091a4)),),
                                    ],
                                  ),
                                  Text(
                                    "|",
                                    style: AppStyle.normalStyle,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 25.h,
                                        child: SwitchButtonWidget(),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text('Non-Veg',style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,color: Color(0xFF9091a4))),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                        DividerWidget(),
                         SizedBox(
                          height: 10.h,
                        ),
                        PizzaTypesWidget(),

                      ],
                    ),
                    // Container(
                    //   height: 35.h,
                    //   padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
                    //   //width: double.infinity,
                    //   child: Column(
                    //     children: [
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                    //           Row(
                    //             children: [
                    //               SizedBox(
                    //                 height: 25.h,
                    //                 child: SwitchButtonWidget(),
                    //               ),
                    //               const SizedBox(
                    //                 width: 5,
                    //               ),
                    //               Text('Veg'),
                    //             ],
                    //           ),
                    //           Text(
                    //             "|",
                    //             style: AppStyle.normalStyle,
                    //           ),
                    //           Row(
                    //             children: [
                    //               SizedBox(
                    //                 height: 15.h,
                    //                 child: SwitchButtonWidget(),
                    //               ),
                    //               const SizedBox(
                    //                 width: 5,
                    //               ),
                    //               Text('Non-Veg'),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //       const SizedBox(
                    //         height: 5,
                    //       ),
                    //       DividerWidget(),
                    //       const SizedBox(
                    //         height: 8,
                    //       ),
                    //       PizzaTypesWidget(),
                    //     ],
                    //   ),
                    // ),
                    Container(),
                    // PizzaTypesWidget(),
                    Container(),
                    Container(),
                    //Text('Person')
                  ],
                  controller: _tabController,
                ),
              ),
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
                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400),
              ),
                SizedBox(width: 10.sp,),

                Text(
                "|",
                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w300),
              ),
                SizedBox(width: 10.sp,),

              Text(
                "T0",
                style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w500),
              )
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(
                "VIEW CART",
                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 10.sp,),
              Icon(Icons.shopping_cart_outlined,size: 20,)
            ],),
          ],
        ),
        onPressed: () {},
      ),
    ),

    );
  }
}
