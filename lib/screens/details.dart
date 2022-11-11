import 'package:explore/network/country_api.dart';
import 'package:flutter/material.dart';
import '../models/models.dart';

class Details extends StatelessWidget {
  final CountryModel country;
  const Details({Key? key, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((country.name!.official).toString()),
      ),
    );
  }

  // Widget buildDesignScreen() {
  //   // final countries = CountryApi();
  //   // return Scaffold(
  //   //   body: FutureBuilder<List<CountryModel>>(
  //   //       future: countries.fetchAllCountries(),
  //   //       builder: (context, snapshot) {
  //   //         if (snapshot.connectionState == ConnectionState.done) {
  //   //           final List<CountryModel> country =
  //   //               snapshot.data as List<CountryModel>;
  //   //           return ListView.builder(
  //   //             scrollDirection: Axis.vertical,
  //   //             shrinkWrap: true,
  //   //             primary: true,
  //   //             itemBuilder: (context, index) {
  //   //               return Column(
  //   //                 children: [
  //   //                   Text((country[index].name!.official).toString())
  //   //                 ],
  //   //               );
  //   //             },
  //   //             itemCount: country.length,
  //   //           );
  //   //         } else {
  //   //           return Center(
  //   //             child: CircularProgressIndicator(),
  //   //           );
  //   //         }
  //   //       }),

  // }
}
