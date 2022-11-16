part of 'global_app_bloc.dart';

@immutable
abstract class GlobalAppState extends Equatable {}

class GlobalAppInitialState extends GlobalAppState {
  @override
  List<Object?> get props => [];
}
