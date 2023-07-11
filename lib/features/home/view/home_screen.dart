import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import '../bloc/app_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late WebViewController controller;
  @override
  void initState() {
    super.initState();
  }

  void addFileSelectionListener() async {
    if (Platform.isAndroid) {
      final androidController = controller.platform as AndroidWebViewController;
      await androidController.setOnShowFileSelector(_androidFilePicker);
    }
  }

  Future<List<String>> _androidFilePicker(
      final FileSelectorParams params) async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.single.path != null) {
      final file = File(result.files.single.path!);
      return [file.uri.toString()];
    }
    return [];
  }

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
          controller = state.webViewController;
          addFileSelectionListener();
          return Scaffold(
            body: WebViewWidget(controller: controller),
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
