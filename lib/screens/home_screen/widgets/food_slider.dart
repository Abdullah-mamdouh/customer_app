
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodSlider extends StatefulWidget {
  const FoodSlider({Key? key}) : super(key: key);

  @override
  State<FoodSlider> createState() => _FoodSliderState();
}

class _FoodSliderState extends State<FoodSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
        SizedBox(
          height: 20.h,
        ),
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
            //
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
      ],
    );
  }
}
