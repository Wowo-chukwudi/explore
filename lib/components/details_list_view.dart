import 'package:flutter/material.dart';
import '../models/models.dart';

class DetailsListView extends StatelessWidget {
  final String population;

  final String region;
  final String capitalInfo;
  final String officialLang;
  final String unMember;
  final String continent;
  final String independence;
  final String area;
  final String currency;
  final String landLocked;
  final String timezone;
  final String startOfWeek;

  final String drivingSide;
  const DetailsListView(
      {Key? key,
      required this.population,
      required this.region,
      required this.capitalInfo,
      required this.officialLang,
      required this.unMember,
      required this.continent,
      required this.independence,
      required this.area,
      required this.currency,
      required this.landLocked,
      required this.timezone,
      required this.startOfWeek,
      required this.drivingSide})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(shrinkWrap: true, children: [
        Column(
          children: [
            Row(
              children: [
                Text(
                  'Population:',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(width: 8),
                population != null
                    ? Text(
                        population,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    : Text('Not Available'),
              ],
            ),
            Row(
              children: [
                Text(
                  'Region:',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(width: 8),
                region != null
                    ? Text(
                        region,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    : Text('Not Available'),
              ],
            ),
            Row(
              children: [
                Text(
                  'Capital Info:',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(width: 8),
                capitalInfo != null
                    ? Text(
                        capitalInfo,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    : Text('Not Available'),
              ],
            ),
            Row(
              children: [
                Text(
                  'Standard Language:',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(width: 8),
                officialLang != null
                    ? Text(
                        officialLang,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    : Text('Not Available'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Member of UN:',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(width: 8),
                unMember != null
                    ? Text(
                        unMember,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    : Text('Not Available'),
              ],
            ),
            Row(
              children: [
                Text(
                  'Continent:',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(width: 8),
                continent != null
                    ? Text(
                        continent,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    : Text('Not Available'),
              ],
            ),
            Row(
              children: [
                Text(
                  'Independent:',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(width: 8),
                independence != null
                    ? Text(
                        independence,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    : Text('Not Available'),
              ],
            ),
            Row(
              children: [
                Text(
                  'Area:',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(width: 8),
                area != null
                    ? Text(
                        area,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    : Text('Not Available'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Currency:',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(width: 8),
                currency != null
                    ? Text(
                        currency,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    : Text('Not Available'),
              ],
            ),
            Row(
              children: [
                Text(
                  'LandLocked:',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(width: 8),
                landLocked != null
                    ? Text(
                        landLocked,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    : Text('Not Available'),
              ],
            ),
            Row(
              children: [
                Text(
                  'TimeZone:',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(width: 8),
                timezone != null
                    ? Text(
                        timezone,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    : Text('Not Available'),
              ],
            ),
            Row(
              children: [
                Text(
                  'Start of the Week:',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(width: 8),
                startOfWeek != null
                    ? Text(
                        startOfWeek,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    : Text('Not Available'),
              ],
            ),
            Row(
              children: [
                Text(
                  'Driving Side:',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(width: 8),
                drivingSide != null
                    ? Text(
                        drivingSide,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    : Text('Not Available'),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
