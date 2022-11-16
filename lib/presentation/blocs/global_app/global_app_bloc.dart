import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'global_app_event.dart';
part 'global_app_state.dart';

class GlobalAppBloc extends Bloc<GlobalAppEvent, GlobalAppState> {
  GlobalAppBloc() : super(GlobalAppInitialState()) {
    on<GlobalAppEvent>((event, emit) {

    });
  }
}
