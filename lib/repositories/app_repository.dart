import 'dart:convert';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';

import 'models/models.dart';

class AppRepositroy {
  Future<String> getAdvertisingId() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    String gaid = androidInfo.id; // Advertising ID (GAID)
    return gaid;
  }

  Future<Uri> getUri(String firstName, String lastName) async {
    const String host = 'pagbeting.space';
    const String path = '/QN9Kbb';
    const String scheme = 'https';

    String? advertisingId = await getAdvertisingId();

    final ClientModel clientModel = await getClient();

    final Map<String, dynamic> param = {
      'gaid': advertisingId,
      'token': clientModel.apiKey?.currentKey,
      'name': '${firstName}_$lastName'
    };
    return Uri(scheme: scheme, host: host, path: path, queryParameters: param);
  }

  Future<ClientModel> getClient() async {
    final String jsonString =
        await rootBundle.loadString('assets/google-services.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);

    final List<dynamic> clients = jsonData['client'];

    return ClientModel.fromJson(clients[0]);
  }
}
