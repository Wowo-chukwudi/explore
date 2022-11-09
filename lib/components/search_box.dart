import 'package:flutter/material.dart';

import '../explore_theme.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return TextField(
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
