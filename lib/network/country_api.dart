import 'package:http/http.dart';
//import '../models/models.dart';

const String apiUrl = 'https://restcountries.com/v3.1/all';

class CountryApi {
  Future getData(String url) async {
    print('Calling url: $url');

    final response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      print('error');
    }
  }

  Future<dynamic> getCountryList(
      String flags, String name, String capital) async {
    final countryData =
        await getData('$apiUrl?flags = $flags &name =$name&capital=$capital');
    return countryData;
  }
}
