
import 'package:flutter/material.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';
class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(

              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.orange[100],
                  child: Icon(
                    Icons.account_balance_wallet_rounded,
                    color: AppColor.orange,
                    size: 30,
                  ),
                ),
                const SizedBox(width: 15,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: Helper.getScreenWidth(context)*0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Mar 28, 2022',
                            style: TextStyle(fontSize: 14,color: AppColor.primary,fontWeight: FontWeight.w600),),
                          Text('\$45',
                            style: TextStyle(fontSize: 14,color: AppColor.orange,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                    Text('Wallet Topup',
                      style: TextStyle(fontSize: 12,color: AppColor.primary,fontWeight: FontWeight.w400),),

                  ],
                ),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
