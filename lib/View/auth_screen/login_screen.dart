import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localshop/View/auth_screen/signup_screen.dart';
import 'package:localshop/View/home_screeen/home.dart';
import 'package:localshop/consts/consts.dart';
import 'package:localshop/widgets_common/applogo_widget.dart';
import 'package:localshop/widgets_common/bg_widget.dart';
import 'package:localshop/widgets_common/custom_textfild.dart';
import 'package:localshop/widgets_common/our_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(20).make(),
            15.heightBox,
            Column(
              children: [
                customTextFild(hint: emailHint, title: email),
                customTextFild(hint: passwordHint, title: password),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make())),
                5.heightBox,
                ourButton(
                        color: redColor,
                        title: login,
                        textColor: whiteColor,
                        onPress: () {

                          Get.to(()=> Home());
                        })
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                        color: lightgolden,
                        title: signup,
                        textColor: redColor,
                        onPress: () {
                          Get.to(() => const SignupScreen());
                        })
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                              child: Image.asset(socialIconList[index],
                                width: 30,
                              ),
                            ),
                      )),
                ),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70).shadowSm
                .make()
          ],
        ),
      ),
    ));

    // return const Placeholder();
  }
}
