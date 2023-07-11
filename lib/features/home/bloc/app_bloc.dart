import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:test_app/repositories/app_repository.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<OpenWebView>((event, emit) async {
      emit(AppLoading());
      final Uri uri =
          await GetIt.I<AppRepositroy>().getUri("Dmitry", "Smirnov");
      final WebViewController webViewController = WebViewController()
        ..loadRequest(uri);
    });
  }
}
