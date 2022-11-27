import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodio/const/colors.dart';
import 'package:foodio/screens/home_screen/widgets/app_drawer_widget.dart';
import 'package:foodio/screens/wallet_screen/widget/card_widget.dart';
import 'package:foodio/screens/wallet_screen/widget/wallet_list_widget.dart';
import 'package:foodio/utils/helper.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);
  static const routeName = "/wallet";

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  String _selectedOption = "PayPal";
  int indexOption = 0;
  List<String> paymentOptions = ['PayPal', 'Stripe'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundWhite,
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: AppColor.orange,
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
          'Wallet',
          style: TextStyle(
            color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Balance',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$200',
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    MaterialButton(
                      onPressed: () {
                        selectPaymentOption(context);
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        'TOPUP WALLET',
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.welcomeColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: WalletListWidget(),
      ),
    );
  }

  selectPaymentOption(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            topLeft: Radius.circular(12),
          ),
        ),
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Topup Wallet',
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColor.primary,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Add Topup Amount',
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColor.secondary,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 1,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            width: double.infinity,
                            child: const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '\$ ',
                                    style: TextStyle(
                                        color: AppColor.primary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
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
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Select Payment Option',
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColor.primary,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 90,
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/real/paypal.png',
                                    height: 35,
                                    width: 35,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEFF4),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: Helper.getScreenWidth(context) * 0.5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'PayPal',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppColor.placeholder,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    _radio(0)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: AppColor.orange,
                              width: 1,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 90,
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/real/paypal.png',
                                    height: 35,
                                    width: 35,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEFF4),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: Helper.getScreenWidth(context) * 0.5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'PayPal',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppColor.placeholder,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    _radio(1)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: AppColor.placeholder,
                              width: 1,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 90,
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/real/paypal.png',
                                    height: 35,
                                    width: 35,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEFF4),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: Helper.getScreenWidth(context) * 0.5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'PayPal',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppColor.placeholder,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    _radio(2)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: AppColor.placeholder,
                              width: 1,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 90,
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/real/paypal.png',
                                    height: 35,
                                    width: 35,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEFF4),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: Helper.getScreenWidth(context) * 0.5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'PayPal',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppColor.placeholder,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    _radio(3)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: AppColor.placeholder,
                              width: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    onPressed: () {},
                    color: AppColor.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  transactionDetails() {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
      ),
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Transaction Details',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColor.primary,
                      fontWeight: FontWeight.w600),
                ),),
                  const SizedBox(
                    height: 20,
                  ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Transaction Details',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColor.primary,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        '12448235a455523sa787',
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColor.secondary,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.3, color: AppColor.placeholder,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              CardWidget(),
            ],
          ),
        );
      },
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
            _selectedOption = paymentOptions[indexOption];
          });
        },
      ),
    );
  }
}
