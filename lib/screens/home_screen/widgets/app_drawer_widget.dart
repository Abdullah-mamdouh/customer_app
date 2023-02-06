import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodio/const/colors.dart';
import 'package:foodio/utils/helper.dart';
import 'package:foodio/utils/routes/routes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
     //width: 250.w,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration:const BoxDecoration(
              // borderRadius: BorderRadius.only(
              //     bottomLeft: Radius.circular(10.0),
              //     bottomRight: Radius.circular(10.0)),
              color: AppColor.welcomeColor,
            ),
            child: GestureDetector(
              onTap: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) =>const ProfilePage()),
                // );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        Helper.getAssetName('person.jpg', 'real'),
                      ),
                      radius: 30.h,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                        'Nermin Ahmed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    Text(
                        'example@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),
          ///

          _createDrawerItem(icon: FontAwesomeIcons.houseChimney, text: 'Restaurants', onTap: () =>
              Navigator.pushNamed(context, AppRoutes.homeScreen),),
          _createDrawerItem(icon: Icons.event, text: 'Cuisines', onTap: () =>
              Navigator.pushNamed(context, AppRoutes.cuisinesScreen),),
          _createDrawerItem(icon: FontAwesomeIcons.utensils, text: 'Dine In', onTap: () {}),
          // Divider(),
          _createDrawerItem(icon: FontAwesomeIcons.magnifyingGlass, text: 'Search',onTap: () =>
              Navigator.pushNamed(context, AppRoutes.searchScreen),),
          _createDrawerItem(icon: FontAwesomeIcons.heart, text: 'Favorite Restaurants',onTap: () =>
              Navigator.pushNamed(context, AppRoutes.favoriteScreen)),
          _createDrawerItem(
              icon: FontAwesomeIcons.wallet, text: 'Wallet',onTap: () =>
              Navigator.pushNamed(context, AppRoutes.walletScreen)),
          _createDrawerItem(icon: FontAwesomeIcons.cartShopping, text: 'Cart',onTap: () =>
              Navigator.pushNamed(context, AppRoutes.cardScreen)),
          _createDrawerItem(icon: FontAwesomeIcons.user, text: 'Profile',onTap: () =>
              Navigator.pushNamed(context, AppRoutes.profileScreen),),

          _createDrawerItem(icon: FontAwesomeIcons.truck, text: 'Orders',onTap: () =>
    Navigator.pushNamed(context, AppRoutes.orderScreen),),
          _createDrawerItem(icon: FontAwesomeIcons.calendar, text: 'Dine-In Bookings',onTap: (){}),
          _createDrawerItem(icon: FontAwesomeIcons.globe, text: 'Language',onTap: (){}),
          _createDrawerItem(icon: FontAwesomeIcons.arrowRightFromBracket, text: 'Login',onTap: (){}),
          // ListTile(
          //   title: Text('0.0.1'),
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  Helper.getAssetName("star_filled.png", "virtual"),))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Flutter Step-by-Step",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {IconData? icon, String? text, Function()? onTap}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: ListTile(
        leading: FaIcon(icon!,size: 20,color: Color(0xFF898989)),
        title:Text(text!, style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500,color: Colors.black),),
        onTap: onTap!,
      ),
    );
  }
}