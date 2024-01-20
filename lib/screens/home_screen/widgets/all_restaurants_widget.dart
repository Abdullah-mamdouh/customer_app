import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';
import '../../../utils/widgets/recent_card_widget.dart';

class AllRestaurantsWidget extends StatefulWidget {
  const AllRestaurantsWidget({Key? key}) : super(key: key);

  @override
  State<AllRestaurantsWidget> createState() => _AllRestaurantsWidgetState();
}

class _AllRestaurantsWidgetState extends State<AllRestaurantsWidget> {

  List restaurantsName = ['Pizza My Heart','Wisepies','Bread Zeppelin','Rasta Pasta'];
  List restaurantsPoster = ['pizza3.png','coffee.jpg','pizza.jpg','pizza4.png'];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:  EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
      child: Column(

        children: List.generate(restaurantsName.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: RecentCard(
                        image: Image.asset(
                          Helper.getAssetName(restaurantsPoster[index], "real"),
                          fit: BoxFit.cover,
                        ),
                        name: restaurantsName[index],
                        color: AppColor.subTiteColor,
                        icon: Icons.favorite_border_rounded,
                      ),
          );
        }),
      ),
    );
  }
}

