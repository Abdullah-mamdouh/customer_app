import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodio/const/colors.dart';
import 'package:foodio/utils/widgets/divider_widget.dart';
import 'package:foodio/screens/home_screen/widgets/app_drawer_widget.dart';

import '../../utils/helper.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);
  static const String routeName = '/card';

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  String _selectedOption = "Delivery(5\$)";
  int indexOption = 0;
  List<String> orderOptions = ['Delivery(5\$)', 'Takeaway(Free)'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),

          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {},
                alignment: Alignment(6, 0.0),
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 25,

                )),
            IconButton(
                onPressed: () {},
                alignment: Alignment(3, 0.0),
                icon: Icon(
                  Icons.map_outlined,
                  color: Colors.black,
                  size: 25,
                )),
            Padding(padding: EdgeInsets.only(right: 5.w), child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 25,
                )),),
          ],
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
            'Your Cart',
            style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  //physics: AlwaysScrollableScrollPhysics(),
                  //scrollDirection: Axis.horizontal,
                  // padding: const EdgeInsets.symmetric(
                  //   vertical: 5,
                  // ),
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 115.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(
                          15,
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 65.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/real/pizza2.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pesto Basil Pizza',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                Container(
                                  width: Helper.getScreenWidth(context) * 0.6,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'T270.00',
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.welcomeColor),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.remove_circle_outline,
                                                size: 30,
                                                color: AppColor.welcomeColor,
                                                //Color(0xFFe8073f),
                                              ),
                                            ),
                                            //const SizedBox(width: 3,),
                                            Text(
                                              '2',
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.primary),
                                            ),
                                            // const SizedBox(width: 5,),
                                            IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.add_circle,
                                                  size: 30,
                                                  color: AppColor.welcomeColor
                                                  //Color(0xFFe8073f),
                                                  ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text('Large(Sorve 2, 4.33 CM), Onions Onions',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    // softWrap: false,
                                    style: TextStyle(
                                        color: Color(0xFF8e8e8e),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400)),

                                 SizedBox(
                                  height: 10.h,
                                ),
                                // GestureDetector(
                                //   child: Text(
                                //     'EDIT',
                                //     style: TextStyle(
                                //         fontSize: 14,
                                //         fontWeight: FontWeight.w600,
                                //         color: AppColor.orange),
                                //   ),
                                // )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>  SizedBox(
                    height: 5.h,
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),

                Container(
                  height: 65.h,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(
                      10,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/virtual/offer_icon_filled.png',
                        height: 50.h,
                        width: 50.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Redeem Coupon',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Add croupon code',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Color(0xFFe6e6f2),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            color: AppColor.primary,
                            size: 25,
                          )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 65.h,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(
                      10,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Remmaks',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Write remarks for restaurant',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Color(0xFFe6e6f2),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            color: AppColor.primary,
                            size: 25,
                          )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 420.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(
                      20,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      priceOptions("Delivery Option", "Delivery(\$78055)"),
                      Divider(
                        color: AppColor.placeholder,
                        //height: 25.h,
                        thickness: 0.2,
                      ),
                      priceOptions("Subtotal", "\$85"),
                      Divider(
                        color: AppColor.placeholder,
                        //height: 25.h,
                        thickness: 0.2,
                      ),
                      priceOptions("Discount", "\$0.00"),
                      Divider(
                        color: AppColor.placeholder,
                        //height: 25.h,
                        thickness: 0.2,
                      ),
                      priceOptions("Special discount(0.0%)", "\$0.00"),
                      Divider(
                        color: AppColor.placeholder,
                        //height: 25.h,
                        thickness: 0.2,
                      ),
                      priceOptions("Delivery Charges", "\$99"),
                      Divider(
                        color: AppColor.placeholder,
                        //height: 25.h,
                        thickness: 0.2,
                      ),
                      priceOptions("GST (10%)", "\$1.0"),
                      Divider(
                        color: AppColor.placeholder,
                        //height: 25.h,
                        thickness: 0.2,
                      ),
                      priceOptions("Order Total", "\$100"),
                    ],
                  ),
                ),

                // Container(
                //   child: Column(
                //     children: [
                //       Text(
                //         'Delivery Option',
                //         style: TextStyle(
                //             fontSize: 14,
                //             fontWeight: FontWeight.w600,
                //             color: AppColor.primary),
                //       ),
                //       const SizedBox(
                //         height: 10,
                //       ),
                //       Container(
                //           //height: 50,
                //           child:
                //               /*ListView.separated(
                //             scrollDirection: Axis.horizontal,
                //             itemBuilder: (context, index) {
                //               return radioAndText(index, orderOptions[index]);
                //             },
                //             separatorBuilder: (context, index) => const SizedBox(
                //                   height: 10,
                //                 ),
                //             itemCount: 2),*/
                //               Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           radioAndText(0, orderOptions[0]),
                //           radioAndText(1, orderOptions[1])
                //         ],
                //       )),
                //       DividerWidget(),
                //       const SizedBox(
                //         height: 15,
                //       ),
                //       priceOptions(),
                //       priceOptions(),
                //       priceOptions(),
                //     ],
                //   ),
                // ),
                // Container(
                //   height: Helper.getScreenHeight(context)*0.9,
                //   child: Column(
                //     children: [
                //
                //     ],
                //   ),
                // ),
                /*Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Total ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500), ),
                      TextSpan(
                        text: '\$105.00',
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Text('PROCEED TO CHECKOUT',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
              ],
            ),
          ),),
          */
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 55.h,
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
                Text(
                  "Total : T100.00",
                  style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w300),
                ),
                Text(
                  "PROCEED TO CHECKOUT",
                  style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w500),
                )
              ],
            ),
            onPressed: () {},
          ),
        ),
    );
  }

  priceOptions(String title, String price) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              price,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ));
  }

  radioAndText(int index, String text) {
    return Container(
      color: AppColor.secondary,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _radio(index),
          const SizedBox(
            width: 10,
          ),
          Text(
            '${text}',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          // Expanded(child: const SizedBox(),),
        ],
      ),
    );
  }

  _radio(int index) {
    return Transform.scale(
      scale: 1.1,
      child: Radio(
        visualDensity: const VisualDensity(
          horizontal: VisualDensity.minimumDensity,
          vertical: VisualDensity.minimumDensity,
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        focusColor: AppColor.orange,
        activeColor: AppColor.orange,
        value: index,
        groupValue: indexOption,
        onChanged: (val) {
          setState(() {
            indexOption = index;
            _selectedOption = orderOptions[indexOption];
          });
        },
      ),
    );
  }
}
