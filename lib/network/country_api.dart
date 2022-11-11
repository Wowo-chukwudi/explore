import 'dart:convert';

import 'package:http/http.dart';
import '../models/models.dart';

// const String apiUrl = 'https://restcountries.com/v3.1/all';

class CountryApi {
  List<CountryModel> parseCountries(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    //parsed.sort(); // parsed.sort((a, b) {
    //   return a.name!.official!
    //       .toLowerCase()
    //       .compareTo(b.name!.official!.toLowerCase());
    // });
    return parsed
        .map<CountryModel>((json) => CountryModel.fromJson(json))
        .toList();
  }
  // List<CountryModel> parseCountries(json) {
  //   List<CountryModel> parsed = (json as List)
  //       .map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
  //       .toList();
  //   parsed.sort((a, b) {
  //     return a.name!.common!
  //         .toLowerCase()
  //         .compareTo(b.name!.common!.toLowerCase());
  //   });
  //   return parsed;
  // }

  Future<List<CountryModel>> fetchAllCountries() async {
    //var client = http.Client();

    var url = Uri.parse('https://restcountries.com/v3.1/all');

    final response = await get(url);
    if (response.statusCode == 200) {
      return parseCountries(response.body);
    } else {
      throw Exception('Unexpected error occured!');
    }
  }

//   Future<List<CountryModel>> getData(String url) async {
//     print('Calling url: $url');

//     final response = await get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       return response.body;
//     } else {
//       print('error');
//     }
//   }

//   Future<List<CountryModel>> getCountryList(
//       String flags, String name, String capital) async {
//     final countryData =
//         await getData('$apiUrl?flags = $flags &name =$name&capital=$capital');
//     return countryData;
//   }
}
