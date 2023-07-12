import 'dart:convert';

import 'package:advertising_info/advertising_info.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'models/models.dart';

class AppRepositroy {
  Future<String> _getAdvertisingId() async {
    AdvertisingInfo advertisingInfo;

    advertisingInfo = await AdvertisingInfo.read();

    return advertisingInfo.id.toString();
  }

  Future<void> initFirebase() async {}

  Future<String> _getFirebaseToken() async {
    String? _token = await FirebaseMessaging.instance.getToken();

    return '$_token';
  }

  Future<ClientModel> getClient() async {
    final String jsonString =
        await rootBundle.loadString('assets/google-services.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);

    final List<dynamic> clients = jsonData['client'];

    return ClientModel.fromJson(clients[0]);
  }

  Future<ProjectInfoModel> getPorjectInfo() async {
    final String jsonString =
        await rootBundle.loadString('assets/google-services.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    return ProjectInfoModel.fromJson(jsonData['project_info']);
  }

  Future<Uri> getUri(String firstName, String lastName) async {
    const String host = 'pagbeting.space';
    const String path = '/QN9Kbb';
    const String scheme = 'https';

    final String advertisingId = await _getAdvertisingId();
    final String firebaseToken = await _getFirebaseToken();

    final Map<String, dynamic> param = {
      'gaid': advertisingId,
      'token': firebaseToken,
      'name': '${firstName}_$lastName'
    };
    print("\n\n\n\n\n" +
        "${Uri(scheme: scheme, host: host, path: path, queryParameters: param).toString()}" +
        "\n\n\n\n");
    return Uri(scheme: scheme, host: host, path: path, queryParameters: param);
  }
}
