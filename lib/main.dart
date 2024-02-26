import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:esim_app/router/router.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    print("Exception Error details ${details.exception}");
    print(" Stack Trace Error details ${details.stack}");
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final router = GoRouter(
    //   initialLocation: '/',
    //   errorPageBuilder: (context, state) {
    //     return MaterialPage(
    //       key: state.pageKey,
    //       child: const Scaffold(
    //         body: Center(
    //           child: Text('Page not found'),
    //         ),
    //       ),
    //     );
    //   },
    //   routes: [home, cart, gifts, profile],
    // );
    return MaterialApp.router(
      title: 'E-Sim App',
      routerConfig: AppNavigation.router,
    );
  }
}
