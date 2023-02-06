import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';

class PizzaTypesWidget extends StatefulWidget {
  const PizzaTypesWidget({Key? key}) : super(key: key);

  @override
  State<PizzaTypesWidget> createState() => _PizzaTypesWidgetState();
}

class _PizzaTypesWidgetState extends State<PizzaTypesWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: false,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            showPizzaDetails();
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            padding: EdgeInsets.all(10),
            height: 95.h,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(
                12,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  offset: Offset(1, 1),
                  blurRadius: 2.0,
                  spreadRadius: 1, // Shadow position
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        Helper.getAssetName('pizza4.png', 'real'),
                      ),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      //color: AppColors.cardColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text('Margerita Pizza',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Expanded(
                                child: Text(
                                  'San marzana fresh mazz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Color(0xFF9091a4),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Text('T29.00',
                                  style: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.welcomeColor)),
                              // Expanded(
                              //     child: Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceBetween,
                              //   children: [
                              //
                              //     OutlinedButton(
                              //       onPressed: () {},
                              //       child: Row(
                              //         children: [
                              //           Icon(
                              //             Icons.add,
                              //             size: 15,
                              //           ),
                              //           Text('ADD',
                              //               style: TextStyle(
                              //                   color: AppColor.orange,
                              //                   fontSize: 16,
                              //                   fontWeight: FontWeight.w500))
                              //         ],
                              //       ),
                              //     ),
                              //   ],
                              // ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) =>  SizedBox(
        height:2.h,
      ),
      itemCount: 2,
    );
  }

  showPizzaDetails(){
    return             showModalBottomSheet(
        isScrollControlled: true,
        useRootNavigator: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),

        context: context,
        builder: (BuildContext bc) {
          return ConstrainedBox(
              constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.7),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Color(0xFF333333),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  Helper.getAssetName('pizza4.png', 'real'),
                                ),
                                fit: BoxFit.fill,
                              )
                          ),),
                        SizedBox(height: 15.h,),

                        Text("Farm Fresh Pizza",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 5.h,),

                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text('T29.00',
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.welcomeColor)),
                            OutlinedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                      Icons.add,
                                      size: 20,
                                      color: AppColor.welcomeColor
                                  ),
                                  Text('ADD',
                                      style: TextStyle(
                                          color: AppColor.welcomeColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500))
                                ],
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 5.h,),

                        Text('Pizza',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF555354))),
                        SizedBox(height: 15.h,),

                        Text('Pizza',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.welcomeColor)),
                        SizedBox(height: 15.h,),

                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      '5',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),                                      SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      'kcal',
                                      style: TextStyle(
                                        color: Colors.black,                                          fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      '279',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      'grams',
                                      style: TextStyle(
                                        color: Colors.black,                                          fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      '21',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      'proteins',
                                      style: TextStyle(
                                        color: Colors.black,                                          fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      '7',
                                      style: TextStyle(
                                        color: AppColor.primary,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      'fats',
                                      style: TextStyle(
                                        color: Colors.black,                                          fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFff3f4f6),
                            borderRadius: BorderRadius.circular(
                              25,
                            ),
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
                        SizedBox(height: 10.h,),


                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
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
                            Text(
                              "Item Total T100.00",
                              style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Add ITEM",
                              style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],

              )
          );
        });
  }
}
