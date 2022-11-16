import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../locator.dart';
import '../../blocs/episodes_list/episodes_list_bloc.dart';
import 'episodes_list_view.dart';

class EpisodesListProvider extends StatelessWidget {
  const EpisodesListProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<EpisodesListBloc>()..add(LoadEpisodesListEvent()) , 
      child: BlocBuilder<EpisodesListBloc, EpisodesListState>(builder: 
        (context, state) {
          if(state is EpisodesListLoadedState ){
            return EpisodesListView(episodeModelList: state.episodeModelList);
          }
        return CircularProgressIndicator();
      },)
    );
  }
}