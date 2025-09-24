import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';

import '../views/profile/profile_view.dart';
import '../views/home/home_view.dart';
import '../views/cart/cart_view.dart';
import '../views/catalog/catalog.dart';

import '../controllers/navbar_controller.dart';

import '../views/profile/profile_view.dart';

class MyNavbar extends StatefulWidget {
  const MyNavbar({super.key});

  @override
  State<MyNavbar> createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {
  NavbarController navbarController = Get.put(NavbarController());

  late int selectedPageIndex = navbarController.selectedPageIndex.value;

  static final List<Widget> _pages = <Widget>[
    HomeView(),
    CatalogView(),
    CartView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: _pages[navbarController.selectedPageIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPageIndex,
          onTap: navbarController.changePage,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Каталог'),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Корзина',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль'),
          ],
        ),
      ),
    );
  }
}
