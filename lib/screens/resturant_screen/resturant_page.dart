import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodio/const/colors.dart';
import 'package:foodio/const/styles.dart';
import 'package:foodio/screens/resturant_screen/widgets/pizza_types_widget.dart';
import 'package:foodio/screens/resturant_screen/widgets/switch_button_widget.dart';
import 'package:foodio/utils/helper.dart';
import 'package:foodio/utils/widgets/divider_widget.dart';

class ResturantPage extends StatefulWidget {
  const ResturantPage({Key? key}) : super(key: key);

  @override
  State<ResturantPage> createState() => _ResturantPageState();
}

class _ResturantPageState extends State<ResturantPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300),
        child: Container(
          height: 200,
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColor.primary,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColor.primary,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/images/real/pizza.jpg',
            ),
            fit: BoxFit.fill,
          )),
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Brazian Steak House',
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColor.primary,
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: AppColor.green,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Open',
                          style: TextStyle(
                              color: AppColor.green,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.placeholder,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColor.secondary,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '91 Parker St, Maxico',
                        style: AppStyle.normalStyle,
                      ),
                    ],
                  ),
                  Container(
                    child: Text(
                      'View Timing',
                      style: TextStyle(
                          color: AppColor.orange,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.location_on),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            '22 km',
                            style: TextStyle(
                              color: AppColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.access_time),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            '25 min',
                            style: TextStyle(
                              color: AppColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.star),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            '5.0 Rate',
                            style: TextStyle(
                              color: AppColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.share),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Share',
                            style: TextStyle(
                              color: AppColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColor.secondary,
                    width: 0.5,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: Helper.getScreenWidth(context)*0.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '5 Reviews',
                              style: TextStyle(
                                color: AppColor.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(Icons.message),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: Helper.getScreenWidth(context)*0.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Services',
                              style: TextStyle(
                                color: AppColor.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(Icons.room_service),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 70,
                child: ListView.separated(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(vertical: 5,),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return OutlinedButton(
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/virtual/offer_icon_filled.png',width: 20,height: 20,),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '50 % OFF',
                                  style: TextStyle(color: AppColor.primary, fontSize: 16,fontWeight: FontWeight.w500),
                                ),

                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('TRYNEW',
                                    style: TextStyle(
                                      color: AppColor.placeholder,
                                      fontSize: 10,
                                    )),
                                Text('|',
                                    style: TextStyle(
                                      color: AppColor.placeholder,
                                      fontSize: 10,
                                    )),
                                Text('Valid till Jan 31,2022',
                                    style: TextStyle(
                                      color: AppColor.placeholder,
                                      fontSize: 10,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              TabBar(
                unselectedLabelColor: AppColor.secondary,
                labelColor: AppColor.orange,indicatorColor: AppColor.orange,
                isScrollable: true,
                tabs: [
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
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: SwitchButtonWidget(),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text('Veg'),
                                ],
                              ),
                              Text(
                                "|",
                                style: AppStyle.normalStyle,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: SwitchButtonWidget(),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text('Non-Veg'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          DividerWidget(),
                          const SizedBox(
                            height: 8,
                          ),
                          PizzaTypesWidget(),
                        ],
                      ),
                    ),
                    Container(),
                    Container(),
                    Container(),
                    //Text('Person')
                  ],
                  controller: _tabController,
                ),
              ),
            ],
          ),
        ),

    );
  }
}
