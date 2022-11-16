part of 'global_app_bloc.dart';

@immutable
abstract class GlobalAppEvent extends Equatable{
  const GlobalAppEvent();
}

class GlobalAppInitialEvent extends GlobalAppEvent {
  @override
  List<Object?> get props => [];

}
