import 'package:flutter/material.dart';
import 'package:localshop/View/cart_screen/cart_screen.dart';
import 'package:localshop/View/category_screen/category_screen.dart';
import 'package:localshop/View/home_screeen/home_screen.dart';
import 'package:localshop/View/profile_screen/profile_screen.dart';
import 'package:localshop/consts/consts.dart';
import 'package:get/get.dart';
import 'package:localshop/controllers/home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // home controller
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: categorise),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: account)
    ];
    var navBody = [
     const HomeScreen(),
     const CategoryScreen(),
     const CartScreen(),
     const ProfileScreen(),

      ];
    return Scaffold(
        body: Column(
          children: [
            Obx(() => Expanded(
                child: navBody.elementAt(controller.currentNavIn.value))),
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentNavIn.value,
            items: navbarItem,
            selectedItemColor: Colors.red,
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            onTap: (value) {
              controller.currentNavIn.value = value;
            },
          ),
        ));
  }
}
