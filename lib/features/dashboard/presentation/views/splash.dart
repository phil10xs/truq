import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:truq_assesment/config/routes/route.dart';
import 'package:truq_assesment/config/routes/route_config.dart';
import 'package:truq_assesment/features/dashboard/presentation/notifier/data.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Provider.of<MyNotifier>(
      context,
      listen: false,
    ).getData();

    Future.delayed(const Duration(seconds: 4)).then((value) {
      Application.router.navigateTo(
        context,
        Routes.dashboard,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
