
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';
import '../../../utils/routes/routes.dart';
import '../home_page.dart';
import 'category_card_widget.dart';

class CategoryFood extends StatefulWidget {
  const CategoryFood({Key? key}) : super(key: key);

  @override
  State<CategoryFood> createState() => _CategoryFoodState();
}

class _CategoryFoodState extends State<CategoryFood> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
        SizedBox(
          height: 10.h,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            left: 10.w,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryCard(
                  image: Image.asset(
                    Helper.getAssetName("hamburger2.png", "real"),
                    fit: BoxFit.cover,
                  ),
                  name: "Offers",
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.category_restaurants_screen);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>  CategoryRestaurantsPage()),
                    // );
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
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.category_restaurants_screen);
                  },
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
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.category_restaurants_screen);
                  },
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
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.category_restaurants_screen);
                  },
                ),
                SizedBox(
                  width: 17.w,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
