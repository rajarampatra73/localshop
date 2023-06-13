import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localshop/consts/consts.dart';

import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfild.dart';
import '../../widgets_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
            "Join the $appname".text.fontFamily(bold).white.size(20).make(),
            15.heightBox,
            Column(
              children: [
                customTextFild(hint: nameHint, title: name),
                customTextFild(hint: emailHint, title: email),
                customTextFild(hint: passwordHint, title: retypePassword),
                customTextFild(hint: passwordHint, title: password),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make())),

                Row(
                  children: [
                    Checkbox(
                      checkColor: redColor,
                      value: false,
                      onChanged: (newValue) {},
                    ), // Checkbox
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(
                        children: [
                          TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(
                                fontFamily: bold,
                                color: fontGrey,
                              )),
                          TextSpan(
                              text: termAndCond,
                              style: TextStyle(
                                fontFamily: bold,
                                color: Colors.red,
                              )),
                          TextSpan(
                              text: " & ",
                              style: TextStyle(
                                fontFamily: bold,
                                color: fontGrey,
                              )),
                          TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                fontFamily: bold,
                                color: Colors.red,
                              )), //// TextSpan // RichText
                          // Row
                        ],
                      )),
                    ),
                  ],
                ),
                5.heightBox,
                ourButton(
                        color: redColor,
                        title: signup,
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                // velocity x use
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: alreadyHaveAccount,
                        style: TextStyle(fontFamily: bold, color: fontGrey),
                      ),
                      TextSpan(
                        text: login,
                        style: TextStyle(fontFamily: bold, color: Colors.red),
                      ),
                    ],
                  ),
                ).onTap(() {
                  Get.back();
                }),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));

    // return const Placeholder();
  }
}
