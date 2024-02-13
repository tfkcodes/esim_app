import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:esim_app/presentation/cart/cart.dart';
import 'package:esim_app/presentation/home/home.dart';
import 'package:esim_app/presentation/gifts/gift.dart';
import 'package:esim_app/presentation/profile/profile.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> parseRoutesFromJson(String jsonString) {
    final Map<String, dynamic> routeData = jsonDecode(jsonString);
    final List<dynamic> routes = routeData['routes'];
    final Map<String, WidgetBuilder> parsedRoutes = {};

    for (final route in routes) {
      final path = route['path'];
      final componentName = route['component'];

      switch (componentName) {
        case 'HomePage':
          parsedRoutes[path] = (context) => const HomePage();
          break;
        case 'CartPage':
          parsedRoutes[path] = (context) => const CartPage();
          break;
        case 'GiftsPage':
          parsedRoutes[path] = (context) => const GiftsPage();
          break;
        case 'ProfilePage':
          parsedRoutes[path] = (context) => const ProfilePage();
          break;
        default:
          // Handle unknown component names
          break;
      }
    }

    return parsedRoutes;
  }
}
