import 'package:explore/models/country_list.dart';
import 'package:flutter/material.dart';
import '../home.dart';

import '../explore_theme.dart';

class SearchBox extends StatefulWidget {
  SearchBox({Key? key}) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  List<CountryModel> searchedCountries = [];
  final country = CountryModel();
  void _runFilter(String input) {
    List<CountryModel> results = [];
    if (input.isEmpty) {
      results = country as List<CountryModel>;
    } else {
      results = country.where((name) =>
              country.name!.common!.toLowerCase().contains(input.toLowerCase()))
          as List<CountryModel>;
    }
    setState(() {
      searchedCountries = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: ((value) => _runFilter),
      style: Theme.of(context).textTheme.bodyText2,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          filled: true,
          //fillColor: Colors.grey[100],
          hintText: 'Search Country',
          hintStyle: Theme.of(context).textTheme.bodyText1,
          prefixIcon: Icon(Icons.search),
          prefixIconColor: Colors.grey[500],
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none)),
    );
  }
}
