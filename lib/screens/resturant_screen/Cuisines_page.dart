
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodio/const/colors.dart';
import 'package:foodio/screens/home_screen/widgets/app_drawer_widget.dart';
import 'package:foodio/screens/resturant_screen/category_restuarants_page.dart';
import 'package:foodio/utils/helper.dart';
class CuisinesPage extends StatelessWidget {
  const CuisinesPage({Key? key}) : super(key: key);
  static const routeName = "/cuisines";

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
          'Cuisines',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              alignment: Alignment(8, 0.0),
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 25,

              )),
          IconButton(
              onPressed: () {},
              alignment: Alignment(4, 0.0),
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
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  CategoryRestaurantsPage()),
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                child: Container(
                  width: double.infinity,
                  height: 110.h,
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
                    image: DecorationImage(
                      image: AssetImage(Helper.getAssetName("bakery.png", "real"),),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      color: Colors.transparent,
                      child: Text("Potes de Sorvetes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.sp,color: Colors.white),),

                    ),
                  )
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
