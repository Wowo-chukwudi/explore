import 'package:flutter/material.dart';
import 'components.dart';
import '../models/models.dart';

class CountryTile extends StatelessWidget {
  final List<CountryModel>? countries;
  const CountryTile({Key? key, required this.countries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text('ji')],
    );
  }
}
