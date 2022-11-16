import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/presentation/views/locations_list/locations_list_view.dart';

import '../../../locator.dart';
import '../../blocs/locations_list/locations_list_bloc.dart';

class LocationsListProvider extends StatelessWidget {
  const LocationsListProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => getIt.get<LocationsListBloc>()..add(LoadLocationsListEvent()),
      child: BlocBuilder<LocationsListBloc,LocationsListState>(builder: 
        (context, state) {
          if(state is LocationsListLoadedState){
            return LocationsListView(locationModelList: state.locationModelList);
          }
          return CircularProgressIndicator();

        },
      ),
    );
  }
}