import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localshop/consts/consts.dart';

Widget ourButton({onPress, color, textColor,String? title}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: const EdgeInsets.all(12)
    ),
      onPressed: (){
      onPress;
      }, child: title!.text.color(textColor).fontFamily(bold).make());
}