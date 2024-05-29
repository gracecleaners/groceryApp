import 'package:flutter/material.dart';
import 'package:groceryapp/screens/cart.dart';
import 'package:groceryapp/screens/category.dart';
import 'package:groceryapp/screens/home.dart';
import 'package:groceryapp/screens/user.dart';
import 'package:iconly/iconly.dart';

class BottomBarNav extends StatefulWidget {
  const BottomBarNav({super.key});

  @override
  State<BottomBarNav> createState() => _BottomBarNavState();
}

class _BottomBarNavState extends State<BottomBarNav> {
  int selectedIndex = 0;
  final List pages = [
    const MyHomePage(),
    const CategoryScreen(),
    const CartScreen(),
    const UserScreen()
  ];

  void selectedPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: selectedPage,
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(IconlyLight.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(IconlyLight.category), label: "Category"),
        BottomNavigationBarItem(icon: Icon(IconlyLight.buy), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(IconlyLight.user), label: "User"),
      ]),
    );
  }
}
