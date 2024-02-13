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
    final Map<String, WidgetBuilder> routeBuilders =
        AppRoutes.parseRoutesFromJson(jsonString);

    final List<GoRoute> routes = routeBuilders.entries.map((entry) {
      print("object $routeBuilders");
      return GoRoute(
        path: entry.key,
        builder: (context, _) => entry.value(context),
      );
    }).toList();

    final router = GoRouter(
      initialLocation: '/',
      errorPageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: Scaffold(
            body: Center(
              child: Text('Page not found'),
            ),
          ),
        );
      },
      routes: routes,
    );
    return MaterialApp.router(
      title: 'E-Sim App',
      routerConfig: router,
    );
  }
}
