import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/data/model/location_model.dart';



class LocationTile extends StatelessWidget {
  final LocationModel locationModel;

  const LocationTile({
    required this.locationModel,

    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: Colors.blue.shade100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 14,
            child: Column(
              children: [
                Text("Location Name: ${locationModel.name}"),
                Text("Location dimension: ${locationModel.dimension}"),
                Text("Location type: ${locationModel.type}"),
              ]
            ),
          )
      ]),
    );
  }
}
