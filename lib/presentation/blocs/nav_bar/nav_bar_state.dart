part of 'nav_bar_bloc.dart';


class NavBarInitializedState extends Equatable {
  final NavigationBarItem navBarItem;
  final int navBarIndex;
  NavBarInitializedState({
    required this.navBarItem,
    required this.navBarIndex
  });
  
  @override
  List<Object> get props => [
    navBarItem,
    navBarIndex
  ];
}

