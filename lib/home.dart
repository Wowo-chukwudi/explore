import 'package:explore/models/models.dart';
import 'package:explore/network/country_api.dart';
import 'package:explore/screens/details.dart';
import 'package:flutter/material.dart';

import './explore_theme.dart';
import 'components/components.dart';
import 'main.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final countries = CountryApi();
    return Scaffold(
      appBar: AppBar(
        title: Stack(children: [
          const Text(
            'Explore ',
            style: TextStyle(
                fontFamily: 'ScothBrace', fontWeight: FontWeight.bold),
          ),
          Positioned(
            child: Text(
              '.',
              style: TextStyle(
                  fontFamily: 'ScothBrace',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFFFF6C00)),
            ),
            bottom: 0,
            right: 0,
          ),
        ]),
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(Explore.themeNotifier.value == ThemeMode.light
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined),
              onPressed: () {
                Explore.themeNotifier.value =
                    Explore.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              })
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: Column(
          children: [
            //Search box
            SearchBox(),
            const SizedBox(
              height: 10,
            ),
            //Language and filter
            Settings(),
            const SizedBox(
              height: 10,
            ),
            //Country list view
            Expanded(
              child: FutureBuilder<List<CountryModel>>(
                  future: countries.fetchAllCountries(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      final List<CountryModel> country =
                          snapshot.data as List<CountryModel>;
                      return ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          country.sort((a, b) {
                            return a.name!.common!
                                .toLowerCase()
                                .compareTo(b.name!.common!.toLowerCase());
                          });
                          return GestureDetector(
                            child: CountryTileListView(
                                flag: (country[index].flags!.png).toString(),
                                countryName:
                                    (country[index].name!.common).toString(),
                                capital:
                                    country[index].capital?.first ?? 'none'),
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Details(country: country[index])));
                            }),
                          );
                        },
                        itemCount: country.length,
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
