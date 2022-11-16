import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/locator.dart';
import 'package:rick_and_morty_app/presentation/blocs/global_app/global_app_bloc.dart';

import 'nav_bar/nav_bar_provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<GlobalAppBloc>(create: (context) => getIt.get<GlobalAppBloc>()),
        
      ], 
      child: BlocBuilder<GlobalAppBloc, GlobalAppState>(
        builder: (context, state) {
          if(state is GlobalAppInitialState){
            return NavBarProvider();

          }
          return CircularProgressIndicator();
        }
      
      ) 
    );
  }
}