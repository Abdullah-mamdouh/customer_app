
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodio/utils/routes/routes.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';
import '../../resturant_screen/resturant_page.dart';

class PopularFood extends StatefulWidget {
  const PopularFood({Key? key}) : super(key: key);

  @override
  State<PopularFood> createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
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

        SizedBox(
          height: 5.h,
        ),
        Container(
            height: 100.h,
            width: double.infinity,
          padding: EdgeInsets.only(left: 10.w),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemBuilder: (context, index) {
                //final hotel = hotelsList[index];
                return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.resturantScreen);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>  const ResturantPage()),
                    // );
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Container(
                      width:280.w,
                      //height: 150.h,
                      //margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),

                      child: Row(
                        children: [
                          Container(
                            //height: 150.h,
                            width: MediaQuery.of(context).size.width * 0.25.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/real/hamburger2.png'
                                ),
                                fit: BoxFit.cover,
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
                                  Text('Classic Burger',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400)),
                                   SizedBox(
                                    height:6.h,
                                  ),
                                  Text('Hungry PUppets',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: AppColor.subTiteColor,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400)),
                                   SizedBox(
                                    height: 8.h,
                                  ),
                                  Text('\$19.00',
                                      style: TextStyle(
                                          color: AppColor.welcomeColor,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500)),
                                  ///
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                );
              },
              // separatorBuilder: (context, index) => const SizedBox(
              //   width: 10,
              // ),
              itemCount: 4),
        ),
      ],
    );
  }
}
