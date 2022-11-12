import 'dart:convert';

import 'package:http/http.dart';
import '../models/models.dart';

class CountryApi {
  List<CountryModel> parseCountries(String responseBody) {
    final parsed = json.decode(responseBody);

    return parsed
        .map<CountryModel>((json) => CountryModel.fromJson(json))
        .toList();
  }

  Future<List<CountryModel>> fetchAllCountries() async {
    var url = Uri.parse('https://restcountries.com/v3.1/all');

    final response = await get(url);
    if (response.statusCode == 200) {
      await Future.delayed(const Duration(milliseconds: 1000));
      return parseCountries(response.body);
    } else {
      throw Exception('Unexpected error occured!');
    }
  }
}
