import 'package:explore/components/components.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class CountryTileListView extends StatelessWidget {
  final String capital;
  final String countryName;
  final String flag;
  CountryTileListView(
      {Key? key,
      required this.capital,
      required this.countryName,
      required this.flag})
      : super(key: key);

  // @override
  @override
  Widget build(BuildContext context) {
    List<CountryModel>? countries;
    return ListTile(
      leading: flag != null
          ? Image(height: 40, width: 40, image: NetworkImage(flag))
          : SizedBox(
              height: 40,
              width: 40,
            ),
      title: Text(
        countryName,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      subtitle: Text(capital),
    );
  }
}
