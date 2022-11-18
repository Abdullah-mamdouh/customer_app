import 'package:flutter/material.dart';

import '../../../const/colors.dart';
class TopupWalletPage extends StatefulWidget {
  const TopupWalletPage({Key? key}) : super(key: key);

  @override
  State<TopupWalletPage> createState() => _TopupWalletPageState();
}

class _TopupWalletPageState extends State<TopupWalletPage> {
  String _selectedOption = "PayPal";
  int indexOption = 0;
  List<String> paymentOptions = ['PayPal', 'Stripe'];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  selectPaymentOption(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            topLeft: Radius.circular(12),
          ),
        ),
        context: context,
        builder: (context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text('Topup Wallet',
                  style: TextStyle(fontSize: 14,color: AppColor.primary,fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20,),
                Text('Add Topup Amount',
                  style: TextStyle(fontSize: 14,color: AppColor.secondary,fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 5,),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 1,
                  child: Container(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: '\$ ',
                            style: TextStyle(color: AppColor.primary,fontSize: 14,
                                fontWeight: FontWeight.bold),),
                          TextSpan(
                            text: ' 50',
                            style: TextStyle(
                                color: AppColor.orange,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Text('Select Payment Option',
                  style: TextStyle(fontSize: 14,color: AppColor.primary,fontWeight: FontWeight.w600),
                ),

                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 100,width: 50,
                        child: Image.asset('assets/images/real/paypal.png'),
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEFF4),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Text('PayPal', style: TextStyle(fontSize: 16,color: AppColor.placeholder,fontWeight: FontWeight.w400),),
                      _radio(0),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColor.orange,width: 1,),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 100,width: 50,
                        child: Image.asset('assets/images/real/paypal.png'),
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEFF4),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Text('PayPal', style: TextStyle(fontSize: 16,color: AppColor.placeholder,fontWeight: FontWeight.w400),),
                      _radio(1),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColor.orange,width: 1,),
                  ),
                ),
              ],
            ),
          );
        });
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
            _selectedOption = paymentOptions[indexOption];
          });
        },
      ),
    );
  }
}
