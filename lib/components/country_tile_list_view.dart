import 'package:explore/components/components.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class CountryTileListView extends StatelessWidget {
  final String capital;
  CountryTileListView({Key? key, required this.capital}) : super(key: key);

  // @override
  @override
  Widget build(BuildContext context) {
    List<CountryModel>? countries;
    return ListTile(
      title: Text(capital),
    );
  }
}
