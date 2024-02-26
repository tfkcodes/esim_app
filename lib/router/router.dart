import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:esim_app/presentation/cart/cart.dart';
import 'package:esim_app/presentation/home/home.dart';
import 'package:esim_app/presentation/gifts/offers.dart';
import 'package:esim_app/presentation/home/homepage.dart';
import 'package:esim_app/presentation/profile/profile.dart';
import '../presentation/home/widget/enum/service_enum.dart';
import 'package:esim_app/presentation/home/widget/screens/service.dart';
import 'package:esim_app/presentation/home/widget/screens/luku/luku_service.dart';
import 'package:esim_app/presentation/home/widget/screens/water/water_service.dart';

class AppNavigation {
  AppNavigation._();

  static String initR = '/home';

  static final _navigatorKey = GlobalKey<NavigatorState>();
  static final _navigatorKeyHome =
      GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _navigatorKeycart =
      GlobalKey<NavigatorState>(debugLabel: 'shellCart');
  static final _navigatorKeyGift =
      GlobalKey<NavigatorState>(debugLabel: 'shellGift');
  static final _navigatorKeyProfile =
      GlobalKey<NavigatorState>(debugLabel: 'shellProfile');
  static final GoRouter router = GoRouter(
      initialLocation: initR,
      navigatorKey: _navigatorKey,
      debugLogDiagnostics: true,
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return MainWrapper(
                navigationShell: navigationShell,
              );
            },
            branches: <StatefulShellBranch>[
              StatefulShellBranch(navigatorKey: _navigatorKeyHome, routes: [
                GoRoute(
                    path: '/home',
                    name: 'Home',
                    builder: (context, state) {
                      return HomeScreen(
                        key: state.pageKey,
                      );
                    },
                    routes: [
                      GoRoute(
                          path: 'luku',
                          builder: (context, state) => const LukuServicePage()),
                      GoRoute(
                        path: 'water',
                        builder: (context, state) => const WaterServicePage(),
                      ),
                      GoRoute(
                          path: 'service/:serviceType',
                          builder: (context, state) {
                            final serviceType = state
                                .pathParameters['serviceType'] as ServiceType;

                            return ServicePage(serviceType: serviceType);
                          })
                    ])
              ]),
              StatefulShellBranch(navigatorKey: _navigatorKeycart, routes: [
                GoRoute(
                  path: '/recharge',
                  name: 'Recharge',
                  builder: (context, state) {
                    return CartPage(
                      key: state.pageKey,
                    );
                  },
                )
              ]),
              StatefulShellBranch(navigatorKey: _navigatorKeyGift, routes: [
                GoRoute(
                  path: '/offers',
                  name: 'Offers',
                  builder: (context, state) {
                    return OffersPage(
                      key: state.pageKey,
                    );
                  },
                )
              ]),
              StatefulShellBranch(navigatorKey: _navigatorKeyProfile, routes: [
                GoRoute(
                  path: '/profile',
                  name: 'Profile',
                  builder: (context, state) {
                    return ProfilePage(
                      key: state.pageKey,
                    );
                  },
                )
              ])
            ])
      ]);
}
