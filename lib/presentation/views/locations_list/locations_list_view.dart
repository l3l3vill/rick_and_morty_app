import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/data/model/location_model.dart';

import 'location_tile.dart';

class LocationsListView extends StatelessWidget {
  final LocationModelList locationModelList;
  const LocationsListView({
    required this.locationModelList,
    super.key
  });

  @override
  Widget build(BuildContext context) {
      return ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: locationModelList.locationModelList.length,
        separatorBuilder: (context, index) => const Divider(
          height: 1.5 
        ),
        itemBuilder: (BuildContext context, int index) => LocationTile(
          locationModel: locationModelList.locationModelList[index] 
        ),
      );
  }
}