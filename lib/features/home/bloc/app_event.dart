part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class OpenWebView extends AppEvent {
  final Uri uri;

  const OpenWebView({required this.uri});

  @override
  List<Object> get props => [uri];
}
