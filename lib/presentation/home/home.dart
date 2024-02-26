import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int visit = 0;

  final List<TabItem> items = [
    const TabItem(icon: Boxicons.bx_home_alt, title: 'Home'),
    const TabItem(icon: Boxicons.bx_wallet, title: 'Recharge'),
    const TabItem(icon: Boxicons.bxs_gift, title: 'Offer'),
    const TabItem(icon: Boxicons.bxs_user_circle, title: 'Profile'),
  ];

  void _goBranch(int index) {
    widget.navigationShell.goBranch(index,
        initialLocation: index == widget.navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: widget.navigationShell,
      ),
      bottomNavigationBar: BottomBarInspiredFancy(
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
          _goBranch(visit);
        },
      ),
    );
  }
}
