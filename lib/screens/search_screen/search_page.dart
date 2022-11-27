
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodio/const/colors.dart';
import 'package:foodio/screens/home_screen/widgets/app_drawer_widget.dart';
import 'package:foodio/screens/resturant_screen/category_restuarants_page.dart';
import 'package:foodio/utils/helper.dart';

import '../home_screen/home_page.dart';
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);
  static const routeName = "/search";

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
        title: TextFormField(
          //maxLength: 20,
          cursorColor: Colors.blueAccent,
          decoration: InputDecoration(
              contentPadding:  EdgeInsets.symmetric(vertical:1.h, ),
              fillColor: Color(0xFFeeeeee),
              filled: true,
              prefixIcon: Icon(Icons.search, color: Colors.black, size: 20),
              suffixIcon: Icon(Icons.clear, color: Colors.black, size: 20),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2),
              ),
             // labelText:
              hintText:'Search',
              hintStyle: TextStyle(color: Color(0xFF555354))),
        ),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      width: 60.w,
                      height: 50.h,
                      child: Image.asset(
                        Helper.getAssetName("coffee.jpg", "real"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 50.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cheesy Corner",
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          SizedBox(height:7.h),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFF9091a5),
                                size: 18,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Expanded(
                                child: Text(
                                  '20 Pavelian Park',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color(0xFF555354),
                                    //AppColor.subTiteColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
        },
        separatorBuilder: (context, index) =>  SizedBox(
          height: 8.h,
        ),
      ),
    );
  }
}
