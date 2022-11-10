import 'package:explore/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../explore_theme.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildLanguage(context),
        buildFilter(context),
      ],
    );
  }

  Widget buildLanguage(BuildContext context) {
    return TextButton.icon(
        style: TextButton.styleFrom(
            elevation: 1.0, side: BorderSide(color: Color(0xFFA9B8D4))),
        onPressed: () {},
        icon: Icon(
          FontAwesomeIcons.globe,
          color: Explore.themeNotifier.value == ThemeMode.light
              ? Colors.black
              : Colors.white,
        ),
        label: Text(
          'EN',
          style: Theme.of(context).textTheme.button,
        ));
  }

  Widget buildFilter(BuildContext context) {
    return TextButton.icon(
        style: TextButton.styleFrom(
            elevation: 1.0, side: BorderSide(color: Color(0xFFA9B8D4))),
        onPressed: () {},
        icon: Icon(
          FontAwesomeIcons.filter,
          color: Explore.themeNotifier.value == ThemeMode.light
              ? Colors.black
              : Colors.white,
        ),
        label: Text(
          'Filter',
          style: Theme.of(context).textTheme.button,
        ));
  }
}
