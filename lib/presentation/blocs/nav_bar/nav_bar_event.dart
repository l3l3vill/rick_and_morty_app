part of 'nav_bar_bloc.dart';

abstract class NavBarEvent extends Equatable {
  const NavBarEvent();

  @override
  List<Object> get props => [];
}

class NavigateEvent extends NavBarEvent {
  final NavigationBarItem navBarItem;
  const NavigateEvent({
    required this.navBarItem,
  });

  @override
  List<Object> get props => [
    navBarItem
  ]; 
}
