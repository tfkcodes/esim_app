import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:esim_app/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: '/',
      errorPageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const Scaffold(
            body: Center(
              child: Text('Page not found'),
            ),
          ),
        );
      },
      routes: [home, cart, gifts, profile, luku, water, service],
    );
    return MaterialApp.router(
      title: 'E-Sim App',
      routerConfig: router,
    );
  }
}
