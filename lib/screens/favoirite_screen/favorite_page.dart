
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodio/const/colors.dart';
import 'package:foodio/screens/home_screen/widgets/app_drawer_widget.dart';
import 'package:foodio/screens/resturant_screen/category_restuarants_page.dart';
import 'package:foodio/utils/helper.dart';

import '../../utils/routes/routes.dart';
import '../../utils/widgets/recent_card_widget.dart';
import '../home_screen/home_page.dart';
import '../home_screen/widgets/recent_item_card_widget.dart';
class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);
  static const routeName = "/favorite";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
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
          'Favourite',
          maxLines: 1,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.search);
              },
              alignment: Alignment(6, 0.0),
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 25,

              )),
          IconButton(
              onPressed: () {

              },
              alignment: Alignment(3, 0.0),
              icon: const Icon(
                Icons.map_outlined,
                color: Colors.black,
                size: 25,
              )),
          Padding(padding: EdgeInsets.only(right: 5.w), child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.card);

              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 25,
              )),),
        ],
      ),
      body:
      ListView.separated(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        //scrollDirection: Axis.horizontal,
        // padding: const EdgeInsets.symmetric(
        //   vertical: 5,
        // ),
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: RecentCard(
                  image: Image.asset(
                    Helper.getAssetName("coffee.jpg", "real"),
                    fit: BoxFit.cover,
                  ),
                  name: "Hash1",
                icon: Icons.favorite,
                color: AppColor.welcomeColor,
                ///
              ),
            );
        },
        separatorBuilder: (context, index) =>  SizedBox(
          height: 5.h,
        ),
      ),
    );
  }
}
