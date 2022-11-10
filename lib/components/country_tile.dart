import 'package:explore/models/country_list.dart';
import 'package:flutter/material.dart';
import '../network/country_api.dart';
import 'package:cached_network_image/cached_network_image.dart';

Widget build(CountryList list) {
  return Row(children: [
    ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(6.0), topRight: Radius.circular(6.0)),
        child: CachedNetworkImage(
            imageUrl: list.flags, height: 210, fit: BoxFit.fill)),
  ]);
}
