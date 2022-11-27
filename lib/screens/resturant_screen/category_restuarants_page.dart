
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodio/const/colors.dart';
import 'package:foodio/utils/helper.dart';
class CategoryRestaurantsPage extends StatelessWidget {
  const CategoryRestaurantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Potes de Sorvetes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp,color: Colors.black),),
        iconTheme: IconThemeData(color: AppColor.welcomeColor),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded,),
          onPressed: () => Navigator.of(context).pop(),
        ),

      ),
      body:
            ListView.separated(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              //scrollDirection: Axis.horizontal,
              // padding: const EdgeInsets.symmetric(
              //   vertical: 5,
              // ),
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return
                    GestureDetector(
                      onTap: (){},
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: Container(
                          width: double.infinity,
                          height: 155.h,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(
                              25,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(0, 2),
                                blurRadius: 2,
                                spreadRadius: 0, // Shadow position
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Container(
                                height: 100.h,
                                width: double.infinity,
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(Helper.getAssetName("fruit.jpg", "real"),),
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
                                EdgeInsets.only(top: 110.h, left: 10.w, bottom: 6.h),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 10.w, ),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "R kitchen",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
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
                                                "0",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Renaaissancce",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: AppColor.subTiteColor,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
              },
              separatorBuilder: (context, index) =>  SizedBox(
                height: 2.h,
              ),
            ),
    );
  }
}
