import 'package:flutter/cupertino.dart';
import 'package:localshop/consts/consts.dart';

Widget featuredButton(icon, String? title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Image.asset(icon, width: 60, fit: BoxFit.fill),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.width(200).margin(EdgeInsets.symmetric(horizontal: 4)).padding(const EdgeInsets.all(4)).white.roundedSM.outerShadowSm.make();
}
