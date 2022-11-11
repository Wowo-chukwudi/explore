import 'dart:convert';

import 'package:explore/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import './explore_theme.dart';
import 'models/models.dart';
import 'components/components.dart';

void main() {
  runApp(Explore());
}

class Explore extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  Explore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            title: 'Explore',
            theme: ExploreTheme.light(),
            darkTheme: ExploreTheme.dark(),
            themeMode: currentMode,
            debugShowCheckedModeBanner: false,
            home: Home(),
          );
        });
  }
}
