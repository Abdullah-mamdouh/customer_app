import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';

class HotelsOnGoogleMapCardWidget extends StatefulWidget {
  HotelsOnGoogleMapCardWidget({Key? key})
      : super(key: key);
  @override
  State<HotelsOnGoogleMapCardWidget> createState() =>
      _HotelsOnGoogleMapCardWidgetState();
}

class _HotelsOnGoogleMapCardWidgetState
    extends State<HotelsOnGoogleMapCardWidget> {
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.85,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    //height: 100,
                    width: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Helper.getAssetName('bakery.png', 'real')),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(
                        12
                      ),
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
                        children: [
                          Text('Brazilian Steak House',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold)),
                          // const SizedBox(
                          //   height: 2,
                          // ),
                          Expanded(child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: AppColor.welcomeColor,
                                size: 20,
                              ),
                              const SizedBox(width: 5,),
                              Text(
                                '5.0 (8)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),),
                          //const SizedBox(height: 8,),
                          // Row(
                          //   mainAxisAlignment:
                          //   MainAxisAlignment.start,
                          //   children: [
                          //     Icon(
                          //       Icons.location_on,
                          //       color: AppColor.secondary,
                          //       size: 20,
                          //     ),
                          //     const SizedBox(width: 10,),
                          //     Text('90 Parker St.Moxico',
                          //         style: TextStyle(
                          //             color: Colors.black,
                          //             fontSize: 12.sp,
                          //             fontWeight: FontWeight.w500)),
                          //   ],
                          // ),
                          Text('90 Parker St.Moxico',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),

                  borderRadius: BorderRadius.circular(12),
               // border: Border.all()
                  boxShadow: [
              BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(2, 2),
              blurRadius: 4.0,
              spreadRadius: 2, // Shadow position
            ),],
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 5,
              ),
          itemCount: 5);
  }
}
