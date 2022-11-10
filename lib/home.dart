import 'package:flutter/material.dart';

import './explore_theme.dart';
import 'components/components.dart';
import 'main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(children: [
          const Text(
            'Explore ',
            style: TextStyle(
                fontFamily: 'ScothBrace', fontWeight: FontWeight.bold),
          ),
          Positioned(
            child: Text(
              '.',
              style: TextStyle(
                  fontFamily: 'ScothBrace',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFFFF6C00)),
            ),
            bottom: 0,
            right: 0,
          ),
        ]),
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
      body: Container(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: Column(
          children: [
            //Search box
            SearchBox(),
            const SizedBox(
              height: 10,
            ),
            //Language and filter
            Settings(),
            //Country list view
          ],
        ),
      ),
    );
  }
}
