import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../bloc/app_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        if (state is AppInitial) {
          return Scaffold(
            body: Center(
              child: OutlinedButton(
                  onPressed: () async =>
                      BlocProvider.of<AppBloc>(context).add(OpenWebView()),
                  child: const Text("open")),
            ),
          );
        } else if (state is AppLoading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (state is AppLoaded) {
          return Scaffold(
            body: WebViewWidget(controller: state.webViewController),
          );
        } else if (state is AppLoadingFailed) {
          return Scaffold(
            body: Center(child: Text(state.exeption.toString())),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
