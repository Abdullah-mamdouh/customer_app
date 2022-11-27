
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    @required String? title,
    @required Function()? pressed,
  }) :  _title = title,
        _pressed = pressed,
        super(key: key);

  final String? _title;
  final void Function()? _pressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: Text(
        _title!,
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 19.sp
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      //actionsIconTheme: IconThemeData(),


      actions: [
        IconButton(
            onPressed: _pressed!,
            alignment: Alignment(8, 0.0),
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 25,

            )),
        IconButton(
            onPressed: _pressed!,
            alignment: Alignment(4, 0.0),
            icon: Icon(
              Icons.map_outlined,
              color: Colors.black,
              size: 25,
            )),
        Padding(padding: EdgeInsets.only(right: 5.w), child: IconButton(
            onPressed: _pressed! ,
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 25,
            )),),
      ],
    );
  }
}
