import 'dart:convert';

import 'package:flutter/services.dart';

import 'models/models.dart';

class AppRepositroy {
  Future<ClientModel> getClient() async {
    final String jsonString =
        await rootBundle.loadString('assets/google-services.json');
    Map<String, dynamic> jsonData = json.decode(jsonString);

    List<dynamic> clients = jsonData['client'];
    print(ClientModel.fromJson(clients[0]).oauthClient.clientId);

    return ClientModel.fromJson(clients[0]);
  }
}
