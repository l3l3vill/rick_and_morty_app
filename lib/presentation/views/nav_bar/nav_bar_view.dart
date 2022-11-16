import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/config/constants/strings.dart';
import 'package:rick_and_morty_app/config/enums/nav_bar_item.dart';
import 'package:rick_and_morty_app/presentation/blocs/nav_bar/nav_bar_bloc.dart';

import '../characters_list/characters_list_provider.dart';
import '../episodes_list/episodes_list_provider.dart';
import '../locations_list/locations_list_provider.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    NavBarBloc navBarBloc = BlocProvider.of<NavBarBloc>(context);
    return 
    Scaffold(
      bottomNavigationBar: BlocBuilder<NavBarBloc, NavBarInitializedState>(
        builder: (context, state) {
          return NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: Colors.blue.shade100 ),
            child: NavigationBar(
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.home) , 
                  label: AppStrings.characters,
                ),         
                NavigationDestination(
                  icon: Icon(Icons.place) , 
                  label: AppStrings.locations,
                ),
                NavigationDestination(
                  icon: Icon(Icons.video_collection) , 
                  label: AppStrings.episodes,
                )  
              ],
              onDestinationSelected: (index) {
                if(index == 0){
                  navBarBloc.add(NavigateEvent(navBarItem: NavigationBarItem.characters,));
                }else if(index == 1){
                  navBarBloc.add(NavigateEvent(navBarItem: NavigationBarItem.places,));
                }else if( index == 2){
                  navBarBloc.add(NavigateEvent(navBarItem: NavigationBarItem.episodes,));
                }
              },
              selectedIndex: state.navBarIndex,
            ),
          );
        }),
      body: BlocBuilder<NavBarBloc, NavBarInitializedState>(builder: (context, state) {
        if(state.navBarItem == NavigationBarItem.characters){
          return CharacterListProvider();
        }else if (state.navBarItem == NavigationBarItem.places){
          return LocationsListProvider();
        }else if(state.navBarItem == NavigationBarItem.episodes){
          return EpisodesListProvider();
        }
        return CharacterListProvider();
      }),
    );
  }
}

