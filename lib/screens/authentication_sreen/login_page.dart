import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/colors.dart';
import '../../utils/widgets/button_with_widget.dart';
import '../../utils/widgets/custom_input_field.dart';
import '../../utils/widgets/main_button.dart';

class LoginView extends StatelessWidget {
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();

  LoginView({Key? key}) : super(key: key);
  // final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h,),

                Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.welcomeColor
                  )
                ),
                SizedBox(height: 15.h),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     LoginOrSignupWith(
                //       tittle: 'Facebook',
                //       icon: Icons.facebook,
                //       onPressed: () {},
                //       backgroundColor: Colors.blue[800],
                //     ),
                //     LoginOrSignupWith(
                //       tittle: 'Twitter',
                //       icon: Icons.facebook,
                //       onPressed: () {},
                //       backgroundColor: Colors.blue[500],
                //     ),
                //   ],
                // ),

                CustomInputField(
                  hintText: 'Email Address',
                  inputController: _conEmail,
                  // formKey: _keyForm,
                ),
                SizedBox(height: 10.h,),

                CustomInputField(
                  hintText: 'Password',
                  inputController: _conPassword,
                  obscureText: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child:  Text('Forgot Password?',style: TextStyle(
                          color: Color(0xff19a8e8), fontWeight: FontWeight.w600),
                  ),
                  ),
                ),

                SizedBox(height: 15.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 18.0.w),
                  child: MainButton(
                    text: 'Log In',
                    backgroundColor: AppColor.welcomeColor,
                    style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),

                    onPressed: ()  {
                    },
                  ),
                ),
                SizedBox(height: 30.h,),

                Center(
                  child: Text(
                      'OR',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                      )
                  ),
                ),
                SizedBox(height: 25.h,),
                // Padding(
                //   padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                //   child: MainButton(
                //     text: 'Facebook Login',
                //     backgroundColor: Color(0xff425892),
                //     style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                //
                //     onPressed: ()  {
                //     },
                //   ),
                // ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 18.0.w),
                  child: LoginOrSignupWith(
                    tittle: 'Facebook Login',
                    style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),

                    icon: Icons.facebook,
                    onPressed: () {},
                    backgroundColor:  Color(0xff425892),
                  ),
                ),
                SizedBox(height: 25.h,),
                // MainButton(
                //   text: 'Login with phone number',
                //   backgroundColor: Colors.white,
                //   //border: AppColor.welcomeColor,
                //   style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: AppColor.welcomeColor),
                //   onPressed: ()  {
                //   },
                // ),
            //     Padding(
            //   padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
            //   child: SizedBox(
            //     height: 50,
            //     width: double.infinity,
            //     child: ElevatedButton(
            //       onPressed: (){},
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: Colors.white,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(24),
            //            side: BorderSide(color: AppColor.welcomeColor,)
            //         ),
            //
            //         elevation: 0,
            //       ),
            //       child: Text('Login with phone number', style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: AppColor.welcomeColor),
            //       ),
            //     ),
            //   ),
            // ),
            //     Padding(
            //       padding:  EdgeInsets.symmetric(horizontal: 18.0.w),
            //       child: LoginOrSignupWith(
            //         tittle: 'Login with phone number',
            //         style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500,color: AppColor.welcomeColor),
            //         iconColor: AppColor.welcomeColor,
            //         icon: Icons.call,
            //         onPressed: () {},
            //         backgroundColor:  Colors.white,
            //       ),
            //     ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 18.0.w),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      fixedSize: Size(MediaQuery.of(context).size.width, 50),
                      backgroundColor: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 0,
                      side: BorderSide(color: AppColor.welcomeColor)
                    ),
                    onPressed: (){},
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.call,color: AppColor.welcomeColor,),
                          // SizedBox(
                          //   width: 30.w,
                          // ),
                          ///
                          Center(
                              child: Text(
                                'Login with phone number',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600,color: AppColor.welcomeColor),
                              )),
                        ],
                      ),
                    ),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
