import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/colors.dart';
import '../../utils/widgets/button_with_widget.dart';
import '../../utils/widgets/custom_input_field.dart';
import '../../utils/widgets/main_button.dart';

class SignupPage extends StatelessWidget {
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();

  SignupPage({Key? key}) : super(key: key);
  // final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
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
                //SizedBox(height: 10.h,),

                Text(
                    'Create new account',
                    style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.welcomeColor
                    )
                ),
                SizedBox(height: 15.h),
                Center(
                  child: SizedBox(
                    height: 120.h,
                    width: 120.w,
                    child: Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.expand,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://img.redro.pl/naklejki/user-profile-icon-vector-avatar-portrait-symbol-flat-shape-person-sign-logo-black-silhouette-isolated-on-white-background-700-253134053.jpg'
                            // BlocProvider.of<ProfileCubit>(context).imageURL
                            //"http://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg",
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
                                Icons.camera_enhance_outlined,
                                color: Colors.white,
                                size: 22,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
                CustomInputField(
                  hintText: 'First Name',
                  inputController: _conEmail,
                  // formKey: _keyForm,
                ),
                CustomInputField(
                  hintText: 'Last Name',
                  inputController: _conPassword,
                  obscureText: true,
                ),
                CustomInputField(
                  hintText: 'Email Address',
                  inputController: _conPassword,
                  obscureText: true,
                ),
                CustomInputField(
                  hintText: 'Mobile',
                  inputController: _conPassword,
                  obscureText: true,
                ),
                CustomInputField(
                  hintText: 'Password',
                  inputController: _conPassword,
                  obscureText: true,
                ),
                CustomInputField(
                  hintText: 'Confirm Password',
                  inputController: _conPassword,
                  obscureText: true,
                ),
                SizedBox(height: 15.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.0.w),
                  child: MainButton(
                    text: 'Sign Up',
                    backgroundColor: AppColor.welcomeColor,
                    style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                    onPressed: ()  {
                    },
                  ),
                ),
                SizedBox(height: 15.h,),

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
                SizedBox(height: 15.h,),
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
                  padding:  EdgeInsets.symmetric(horizontal: 25.0.w),
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
                          Center(
                              child: Text(
                                'Sign up with phone number',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500,color: AppColor.welcomeColor),
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
