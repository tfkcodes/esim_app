import 'package:flutter/material.dart';
import 'package:esim_app/router/router.dart';
import 'package:esim_app/router/routes.dart';
import 'package:awesome_bottom_bar/tab_item.dart';
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
  List<TabItem> items = [
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

  final Map<String, WidgetBuilder> routes =
      AppRoutes.parseRoutesFromJson(jsonString);

  final List<Widget> _pages = [
    const HomeScreen(),
    const CartPage(),
    const GiftsPage(),
    const ProfilePage(),
  ];
  int visit = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[visit],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
        child: BottomBarInspiredFancy(
          borderRadius: BorderRadius.circular(15),
          items: items,
          backgroundColor: Colors.white,
          color: Color(0xff26a69a),
          colorSelected: Color(0xff22958b),
          indexSelected: visit,
          styleIconFooter: StyleIconFooter.dot,
          animated: true,
          onTap: (int index) => setState(() {
            visit = index;
          }),
        ),
      ),
    );
  }
}
