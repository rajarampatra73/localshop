import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localshop/consts/consts.dart';
import 'package:localshop/widgets_common/bg_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(title: categorise.text.fontFamily(bold).white.make()),
      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return Column(

                children: [
              Image.asset(icBrands),
                ],
              ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make();
            }),
      ),
    ));
  }
}
