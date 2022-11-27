import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodio/const/colors.dart';
import 'package:foodio/utils/widgets/divider_widget.dart';

import '../../utils/helper.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  String _selectedOption = "Delivery(5\$)";
  int indexOption = 0;
  List<String> orderOptions = ['Delivery(5\$)', 'Takeaway(Free)'];
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
          'Card',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: Helper.getScreenHeight(context)*0.9,
            child: Column(
              children: [
                Container(
                  height: Helper.getScreenHeight(context)*0.5,

                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: ListView.separated(
                    //physics: AlwaysScrollableScrollPhysics(),
                    //scrollDirection: Axis.horizontal,
                    // padding: const EdgeInsets.symmetric(
                    //   vertical: 5,
                    // ),
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Container(
                          constraints: BoxConstraints(
                          maxWidth: Helper.getScreenWidth(context)*0.6
                        ),
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/real/pizza2.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pesto Basil Pizza',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.primary),
                                  ),
                                  Container(
                                    width: Helper.getScreenWidth(context)*0.6,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$30.00',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppColor.orange),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.remove_circle_outline,
                                                  color: AppColor.orange,
                                                ),
                                              ),
                                              //const SizedBox(width: 3,),
                                              Text(
                                                '2',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: AppColor.primary),
                                              ),
                                             // const SizedBox(width: 5,),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.add_circle,
                                                  color: AppColor.orange,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                      'Large(Sorve 2, 4.33 CM), Onions, Olives, Sweet Corn',
                                      maxLines: 2,
                                       overflow: TextOverflow.fade,
                                      // softWrap: false,
                                      style: TextStyle(
                                        color: AppColor.secondary,
                                          fontSize: 14, fontWeight: FontWeight.w400)),
                                  const SizedBox(height: 10,),
                                  GestureDetector(
                                    child: Text(
                                      'EDIT',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.orange),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Card(
                  child: Container(
                    child: Row(
                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/virtual/offer_icon_filled.png',
                          height: 35,
                          width: 35,
                        ),
                        Column(
                          children: [
                            Text(
                              'Redeem Coupon',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.primary),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Add croupon code',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.secondary),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColor.secondary,
                            child: Center(child: Icon(Icons.add)),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Delivery Option',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColor.primary),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        //height: 50,
                        child:
                        /*ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return radioAndText(index, orderOptions[index]);
                            },
                            separatorBuilder: (context, index) => const SizedBox(
                                  height: 10,
                                ),
                            itemCount: 2),*/
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            radioAndText(0, orderOptions[0]),
                            radioAndText(1, orderOptions[1])
                          ],
                        )
                      ),
                      DividerWidget(),
                      const SizedBox(
                        height: 5,
                      ),
                      priceOptions(),
                      priceOptions(),
                      priceOptions(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          /*Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Total ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500), ),
                      TextSpan(
                        text: '\$105.00',
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Text('PROCEED TO CHECKOUT',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
              ],
            ),
          ),),
          */
        ],
      ),
    );
  }

  priceOptions() {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              'Subtotal',
              style: TextStyle(
                  color: AppColor.secondary,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              '\$99.00',
              style: TextStyle(
                  color: AppColor.primary,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 8,
            ),
            DividerWidget(),
          ],
        ),
      ],
    );
  }

  radioAndText(int index, String text) {
    return Container(
      color: AppColor.secondary,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _radio(index),
          const SizedBox(
            width: 10,
          ),
          Text(
            '${text}',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          // Expanded(child: const SizedBox(),),
        ],
      ),
    );
  }

  _radio(int index) {
    return Transform.scale(
      scale: 1.1,
      child: Radio(
        visualDensity: const VisualDensity(
          horizontal: VisualDensity.minimumDensity,
          vertical: VisualDensity.minimumDensity,
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        focusColor: AppColor.orange,
        activeColor: AppColor.orange,
        value: index,
        groupValue: indexOption,
        onChanged: (val) {
          setState(() {
            indexOption = index;
            _selectedOption = orderOptions[indexOption];
          });
        },
      ),
    );
  }
}
