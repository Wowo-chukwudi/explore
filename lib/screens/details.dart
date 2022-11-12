import 'package:explore/components/details_list_view.dart';
import 'package:explore/network/country_api.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../models/models.dart';
import '../components/components.dart';

class Details extends StatefulWidget {
  final CountryModel country;
  const Details({Key? key, required this.country}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          (widget.country.name!.common).toString(),
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            //carosel
            ImageSlider(
              flag: (widget.country.flags!.png).toString(),
              coatOfArms: (widget.country.coatOfArms!.png).toString(),
            ),
            const SizedBox(
              height: 20,
            ),

            //details
            DetailsListView(
              population: (widget.country.population).toString(),
              region: (widget.country.region).toString(),
              capitalInfo: (widget.country.capitalInfo!.latlng).toString(),
              officialLang: (widget.country.languages!.eng).toString(),
              unMember: (widget.country.unMember).toString(),
              continent: (widget.country.continents).toString(),
              independence: (widget.country.independent).toString(),
              area: (widget.country.area).toString(),
              currency: (widget.country.currencies).toString(),
              landLocked: (widget.country.landlocked).toString(),
              timezone: (widget.country.timezones).toString(),
              startOfWeek: (widget.country.startOfWeek).toString(),
              drivingSide: (widget.country.car!.side).toString(),
            )
          ],
        ),
      ),
    );
  }
}
