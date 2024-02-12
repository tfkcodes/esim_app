import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:esim_app/router/router.dart';
import 'package:esim_app/router/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GoRouter router = createRouterFromJson(jsonString);

    return MaterialApp.router(
      title: 'E-Sim App',
      routerDelegate: router.routerDelegate,
    );
  }
}
