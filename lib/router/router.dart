import 'package:go_router/go_router.dart';
import 'package:esim_app/presentation/cart/cart.dart';
import 'package:esim_app/presentation/home/home.dart';
import 'package:esim_app/presentation/gifts/gift.dart';
import 'package:esim_app/presentation/profile/profile.dart';
import '../presentation/home/widget/enum/service_enum.dart';
import 'package:esim_app/presentation/home/widget/screens/service.dart';
import 'package:esim_app/presentation/home/widget/screens/luku/luku_service.dart';
import 'package:esim_app/presentation/home/widget/screens/water/water_service.dart';

final home = GoRoute(
  path: '/',
  builder: (context, state) => const HomePage(),
);

final cart = GoRoute(
  path: '/cart',
  builder: (context, state) => const CartPage(),
);

final gifts = GoRoute(
  path: '/gifts',
  builder: (context, state) => const GiftsPage(),
);

final profile = GoRoute(
  path: '/profile',
  builder: (context, state) => const ProfilePage(),
);

final luku = GoRoute(
    path: '/luku', builder: (context, state) => const LukuServicePage());

final water = GoRoute(
  path: '/water',
  builder: (context, state) => const WaterServicePage(),
);

final service = GoRoute(
    path: '/service/:serviceType',
    builder: (context, state) {
      final serviceType = state.pathParameters['serviceType'] as ServiceType;

      return ServicePage(serviceType: serviceType);
    });
