import 'package:flutter/material.dart';
import 'package:localshop/consts/colors.dart';
import 'package:localshop/consts/consts.dart';
import 'package:localshop/widgets_common/applogo_widget.dart';
import 'package:get/get.dart';
import '../auth_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  // method  change screen
  const SplashScreen({super.key});



  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      // use get x
      Get.to(() => LoginScreen());
    });
  }
  @override
  void initState() {
    changeScreen();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(icSplashBg, width: 300),
          ),
          20.heightBox,
          applogoWidget(),
          10.heightBox,
          appname.text.fontFamily(bold).size(22).white.make(),
          5.heightBox,
          appversion.text.white.make(),
          Spacer(),
          credits.text.white.fontFamily(semibold).make(),
          30.heightBox,
        ]), // Column
      ), // Center
    );
  }
}
