import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:esim_app/presentation/cart/cart.dart';
import 'package:esim_app/presentation/gifts/gift.dart';
import 'package:esim_app/presentation/homepage/home.dart';
import 'package:esim_app/presentation/profile/profile.dart';

GoRouter createRouterFromJson(String jsonString) {
  print("Received JSON string: $jsonString");

  final Map<String, dynamic> routeData = jsonDecode(jsonString);
  final List<GoRoute> routes = _parseRoutes(routeData['routes']);

  print("My routes defined is $routes");
  return GoRouter(routes: routes);
}

List<GoRoute> _parseRoutes(List<dynamic> routes) {
  print("Parsing routes: $routes");
  if (routes.isEmpty) {
    return [];
  }
  return routes.map((route) {
    final List<GoRoute> children = _parseRoutes(route['children']);
    return GoRoute(
      name: route['component'],
      path: route['path'],
      builder: (context, state) {
        print(
            "Building route: ${route['path']} with component ${route['component']}");
        return _getWidget(route['component']);
      },
      routes: children,
    );
  }).toList();
}

Widget _getWidget(String componentName) {
  switch (componentName) {
    case 'HomePage':
      print('Home page');
      return const HomePage();
    case 'CartPage':
      return const CartPage();
    case 'GiftsPage':
      print('Gifts page');

      return const GiftsPage();
    case 'ProfilePage':
      print('Profile page');

      return const ProfilePage();
    default:
      print('Unknown component: $componentName');

      return Container(); // Or any default page/widget
  }
}
