import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localshop/consts/consts.dart';

Widget customTextFild({String? title , String? hint,controller}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
       // controller: controller,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          hintText: hint,
          isCollapsed: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: redColor))
        ),
      ),
      5.heightBox,

    ],
  );
}