import 'package:flutter/material.dart';

import './explore_theme.dart';
import 'main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore.',
          style:
              TextStyle(fontFamily: 'ScothBrace', fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(Explore.themeNotifier.value == ThemeMode.light
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined),
              onPressed: () {
                Explore.themeNotifier.value =
                    Explore.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              })
        ],
      ),
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}
