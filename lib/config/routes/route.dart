import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'route_handler.dart';

class Routes {
  static String root = "/";
  static String home = "/home";
  static String dashboard = "/dashbaord";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        );
      },
    );

    router.define(root, handler: rootHandler);
    router.define(home, handler: homeHandler);
    router.define(dashboard, handler: dashboardHandler);
  }
}
