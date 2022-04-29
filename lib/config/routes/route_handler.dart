import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:truq_assesment/features/dashboard/presentation/views/dashboard.dart';

import '../../features/dashboard/presentation/views/home.dart';
import '../../features/dashboard/presentation/views/splash.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const SplashScreen();
});

var homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomeScreen();
});

var dashboardHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const DashBoardScreen();
});
