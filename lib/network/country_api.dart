import 'dart:convert';

import 'package:http/http.dart';
import '../models/models.dart';

// const String apiUrl = 'https://restcountries.com/v3.1/all';

class CountryApi {
  List<CountryModel> parseCountries(String responseBody) {
    final parsed = json.decode(responseBody);

    // parsed.sort((a, b) {
    //   return a.name!.official!
    //       .toLowerCase()
    //       .compareTo(b.name!.official!.toLowerCase());
    // }); // parsed.sort((a, b) {

    return parsed
        .map<CountryModel>((json) => CountryModel.fromJson(json))
        .toList();
  }

  Future<List<CountryModel>> fetchAllCountries() async {
    //var client = http.Client();

    var url = Uri.parse('https://restcountries.com/v3.1/all');

    final response = await get(url);
    if (response.statusCode == 200) {
      // final result = json.decode(response.body);

      // Iterable list = result[0];
      // return list.map((e) => CountryModel.fromJson(e)).toList();

      return parseCountries(response.body);
    } else {
      throw Exception('Unexpected error occured!');
    }
  }
}
