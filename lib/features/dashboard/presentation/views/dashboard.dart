// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:truq_assesment/core/assets/assets.dart';
import 'package:truq_assesment/features/dashboard/presentation/views/explorer.dart';
import 'package:truq_assesment/features/dashboard/presentation/views/home.dart';
import 'package:truq_assesment/features/dashboard/presentation/views/profile.dart';

import '../notifier/data.dart';

class DashBoardScreen extends StatefulWidget {
  static const route = "/dashboard";
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int? currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _screens = [
      const HomeScreen(),
      const ExplorerScreen(),
      const Center(
        child: Text('Chariot'),
      ),
      const ProfileScreen(),
    ];

    return Consumer<MyNotifier>(builder: (context, value, child) {
      final _list = [
        SizedBox(
          child: Column(
            children: [
              const SizedBox(height: 24),
              ImageIcon(
                const AssetImage(kHomely),
                color: value.current == 0
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
              ),
              const SizedBox(height: 3),
              Text(
                'Accueil',
                style: TextStyle(
                  color: value.current == 0
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Column(
            children: [
              const SizedBox(height: 24),
              ImageIcon(
                const AssetImage(kExplorer),
                color: value.current == 1
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
              ),
              const SizedBox(height: 3),
              Text(
                'Explorer',
                style: TextStyle(
                  color: value.current == 1
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Column(
            children: [
              const SizedBox(height: 24),
              ImageIcon(
                const AssetImage(kChariot),
                color: value.current == 2
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
              ),
              const SizedBox(height: 3),
              Text(
                'Chariot',
                style: TextStyle(
                  color: value.current == 2
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Column(
            children: [
              const SizedBox(height: 24),
              ImageIcon(
                const AssetImage(kProfile),
                color: value.current == 3
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
              ),
              const SizedBox(height: 3),
              Text(
                'Profile',
                style: TextStyle(
                  color: value.current == 3
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ];

      return Scaffold(
        body: _screens[value.current],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: SizedBox(
            height: 85,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (var i = 0; i < _list.length; i++)
                      GestureDetector(
                        onTap: () {
                          value.current = i;
                          currentIndex = i;
                        },
                        child: _list[i],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
