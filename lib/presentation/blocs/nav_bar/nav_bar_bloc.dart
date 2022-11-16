import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty_app/config/enums/nav_bar_item.dart';

part 'nav_bar_event.dart';
part 'nav_bar_state.dart';

class NavBarBloc extends Bloc<NavBarEvent, NavBarInitializedState> {
  NavBarBloc() : super(NavBarInitializedState(navBarItem: NavigationBarItem.characters, navBarIndex: 0)) {
    on<NavigateEvent>(_onNavigateEvent);
  }

  void _onNavigateEvent(
    NavigateEvent event,
    Emitter<NavBarInitializedState> emit
  ){
    switch(event.navBarItem){
      case NavigationBarItem.characters:
        emit(NavBarInitializedState(
          navBarItem: NavigationBarItem.characters, 
          navBarIndex: 0)
        );
        break;
      case NavigationBarItem.places:
        emit(NavBarInitializedState(
          navBarItem: NavigationBarItem.places, 
          navBarIndex: 1)
        );
        break;
      case NavigationBarItem.episodes:
        emit(NavBarInitializedState(
          navBarItem: NavigationBarItem.episodes, 
          navBarIndex: 2)
        );
        break;
      
    }  
  }
}
