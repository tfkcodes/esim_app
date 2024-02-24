import 'package:flutter/material.dart';
import 'package:esim_app/presentation/cart/cart.dart';
import 'package:esim_app/presentation/gifts/gift.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:esim_app/presentation/home/homepage.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:esim_app/presentation/profile/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int visit = 0;

  final List<TabItem> items = [
    const TabItem(
      icon: Boxicons.bx_home_alt,
    ),
    const TabItem(
      icon: Boxicons.bxs_cart_alt,
    ),
    const TabItem(
      icon: Boxicons.bxs_gift,
    ),
    const TabItem(
      icon: Boxicons.bxs_user_circle,
    ),
  ];

  final List<Widget> _pages = [
    const HomeScreen(),
    const CartPage(),
    const GiftsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          IndexedStack(
            index: visit,
            children: _pages,
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, -3),
                  ),
                ],
              ),
              child: BottomBarInspiredFancy(
                borderRadius: BorderRadius.circular(15),
                items: items,
                backgroundColor: Colors.white,
                color: const Color(0xff26a69a),
                colorSelected: const Color(0xff22958b),
                indexSelected: visit,
                styleIconFooter: StyleIconFooter.dot,
                animated: true,
                onTap: (int index) {
                  setState(() {
                    visit = index;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
