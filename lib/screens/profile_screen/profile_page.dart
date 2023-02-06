import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodio/const/colors.dart';
import 'package:foodio/screens/home_screen/widgets/app_drawer_widget.dart';
import 'package:foodio/utils/helper.dart';
import 'package:foodio/utils/widgets/appbar_widget.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  static const routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
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
          "My Profile",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        //actionsIconTheme: IconThemeData(),

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
          Padding(
            padding: EdgeInsets.only(right: 5.w),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 25,
                )),
          ),
        ],
      ),
      //backgroundColor: const Color(0xFF1a1a1a),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 25.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 120.h,
                    width: 120.w,
                    child: Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.expand,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            Helper.getAssetName('person.jpg', 'real'),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: -25,
                            child: RawMaterialButton(
                              onPressed: () {},
                              elevation: 2.0,
                              fillColor: Color(0xFF8fd469),
                              padding: EdgeInsets.all(5.0),
                              shape: CircleBorder(),
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 18,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: Text(
                    'Ibrahim Hassan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                ListTile(
                  leading: const Icon(Icons.person, color: Color(0xff2196f3)),
                  title: Text(
                    'Account Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings_input_svideo_rounded,
                      color: Color(0xff9e9e9e)),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Color(0xff4caf51),
                  ),
                  title: Text('Contact Us',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      )),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.delete_outline_outlined,
                    color: Color(0xffe5473d),
                  ),
                  title: Text('Delete Account',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      )),
                  onTap: () {},
                ),
                Padding(
                  padding: EdgeInsets.all(22),
                  child: Container(
                    height: 35.h,
                    width: double.infinity,
                    //color: Colors.white,
                    child: ElevatedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          side: BorderSide(
                            width: .05,
                            color: AppColor.subTiteColor,
                          ),
                          backgroundColor: Colors.white
                          // padding: EdgeInsets.symmetric(
                          //   vertical: 5,
                          //   horizontal: 15,
                          // ),
                          ),
                      onPressed: () {},
                      child: Text(
                        "Log Out",
                        style: TextStyle(color: Colors.black, fontSize: 13.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
