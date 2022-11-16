import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/nav_bar/nav_bar_bloc.dart';
import 'package:rick_and_morty_app/presentation/views/nav_bar/nav_bar_view.dart';

import '../../../locator.dart';

class NavBarProvider extends StatelessWidget {
  const NavBarProvider({super.key});
  

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<NavBarBloc>() ,
      child: BlocBuilder<NavBarBloc, NavBarInitializedState>(
        builder:(context, state) {
            return NavBarView();
        }, 
      )  
    );
  }
}

