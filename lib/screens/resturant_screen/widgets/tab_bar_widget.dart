
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';
import '../../../const/styles.dart';
import '../../../utils/widgets/divider_widget.dart';
import 'pizza_types_widget.dart';
import 'switch_button_widget.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          unselectedLabelColor: const Color(0xFF9091a4),
          labelColor: AppColor.welcomeColor,
          indicatorColor: AppColor.welcomeColor,
          isScrollable: true,
          tabs: const [
            Tab(
              text: 'Pizza',
            ),
            Tab(
              text: 'Desserts',
            ),
            Tab(
              text: 'Beverages',
            ),
            Tab(
              text: 'Sideline',
            ),
          ],
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        Expanded(
          child: TabBarView(
            children: [
              Column(
                children: [
                  Container(
                    height: 50.h,
                    padding: EdgeInsets.symmetric(
                        horizontal: 30.w, vertical: 10.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 25.h,
                                  width: 50,
                                  child: SwitchButtonWidget(),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Veg',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF9091a4)),
                                ),
                              ],
                            ),
                            Text(
                              "|",
                              style: AppStyle.normalStyle,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 25.h,
                                  child: SwitchButtonWidget(),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text('Non-Veg',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF9091a4))),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  DividerWidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Expanded(child: PizzaTypesWidget()),
                ],
              ),
              // Container(
              //   height: 35.h,
              //   padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
              //   //width: double.infinity,
              //   child: Column(
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Row(
              //             children: [
              //               SizedBox(
              //                 height: 25.h,
              //                 child: SwitchButtonWidget(),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               Text('Veg'),
              //             ],
              //           ),
              //           Text(
              //             "|",
              //             style: AppStyle.normalStyle,
              //           ),
              //           Row(
              //             children: [
              //               SizedBox(
              //                 height: 15.h,
              //                 child: SwitchButtonWidget(),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               Text('Non-Veg'),
              //             ],
              //           ),
              //         ],
              //       ),
              //       const SizedBox(
              //         height: 5,
              //       ),
              //       DividerWidget(),
              //       const SizedBox(
              //         height: 8,
              //       ),
              //       PizzaTypesWidget(),
              //     ],
              //   ),
              // ),
              Container(),
              // PizzaTypesWidget(),
              Container(),
              Container(),
              //Text('Person')
            ],
            controller: _tabController,
          ),
        ),
      ],
    );
  }
}
