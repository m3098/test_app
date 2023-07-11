part of 'app_bloc.dart';

abstract class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

class AppInitial extends AppState {}

class AppLoading extends AppState {}

class AppLoaded extends AppState {
  final WebViewController webViewController;

  const AppLoaded(this.webViewController);

  @override
  List<Object> get props => [webViewController];
}

class AppLoadingFailed extends AppState {}
