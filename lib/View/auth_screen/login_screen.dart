import 'package:flutter/material.dart';
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
    return bgWidget(child: Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(20).make(),
            10.heightBox,
            Column(children: [
              customTextFild(hint: emailHint,title: email),
              customTextFild(hint: passwordHint,title: password),

             Align(alignment: Alignment.centerRight, child: TextButton(onPressed: (){}, child: forgetPass.text.make()))
              ,5.heightBox,

              ourButton(color: redColor, title: login, textColor: whiteColor, onPress: (){}).box.width(context.screenWidth -50).make(),
              5.heightBox,
              createNewAccount.text.color(fontGrey).make(),
              5.heightBox,
              ourButton(color: golden, title: signup, textColor: redColor, onPress: (){}).box.width(context.screenWidth -50).make(),
              5.heightBox,
             ],

             ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth -7).make()
          ],
        ),
      ),
    ));

    // return const Placeholder();
  }
}
