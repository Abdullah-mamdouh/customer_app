import 'package:flutter/material.dart';

import '../../const/colors.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 15,
          ),
        ),
        title: Text(
          'My Orders',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: ListView.separated(
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/real/pizza2.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Pesto Basil Pizza',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColor.primary),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Order Piaced | Aug 5, 2022',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.secondary),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      '\$30.00',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColor.orange),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          side: BorderSide(width: 1, color: AppColor.orange,),
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 15,
                          ),
                        ),
                        child: Text(
                          'REORDER',
                          style: TextStyle(
                              color: AppColor.orange,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        side: BorderSide(width: 1, color: AppColor.primary),
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 15,
                        ),
                      ),
                      child: Text(
                        'RATE ORDER',
                        style: TextStyle(
                            color: AppColor.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
      ),
    );
  }
}
