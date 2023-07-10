// ignore_for_file: library_private_types_in_public_api

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'client_model.g.dart';

@JsonSerializable()
class ClientModel extends Equatable {
  @JsonKey(name: 'client_info')
  final _ClientInfoModel? clientInfo;

  @JsonKey(name: 'oauth_client')
  final List<Map<String, dynamic>>? oauthClients; //что это за api блин такое

  @JsonKey(ignore: true)
  late final _OauthClientModel oauthClient;

  @JsonKey(name: 'api_key')
  final List<Map<String, dynamic>>? apiKeys;

  @JsonKey(ignore: true)
  late final _ApiKeyModel? apiKey;

  @JsonKey(name: 'services')
  final _ServicesModel? services;

  ClientModel({
    this.clientInfo,
    this.oauthClients,
    this.apiKeys,
    this.services,
  }) {
    oauthClient = _OauthClientModel(
      clientId: oauthClients?[0]['client_id'],
      clientType: oauthClients?[0]['client_type'],
    );
    apiKey = _ApiKeyModel(currentKey: apiKeys?[0]['current_key']);
  }

  factory ClientModel.fromJson(Map<String, dynamic> json) =>
      _$ClientModelFromJson(json);

  Map<String, dynamic> toJson() => _$ClientModelToJson(this);

  @override
  List<Object?> get props => [clientInfo, oauthClient, apiKey, services];
}

@JsonSerializable()
class _ClientInfoModel extends Equatable {
  @JsonKey(name: 'mobilesdk_app_id')
  final String? mobilesdkAppId;

  @JsonKey(name: 'android_client_info')
  final _AndroidClientInfoModel? androidClientInfo;

  const _ClientInfoModel({this.mobilesdkAppId, this.androidClientInfo});

  factory _ClientInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ClientInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$ClientInfoModelToJson(this);

  @override
  List<Object?> get props => [mobilesdkAppId, androidClientInfo];
}

@JsonSerializable()
class _AndroidClientInfoModel extends Equatable {
  @JsonKey(name: 'package_name')
  final String? packageName;

  const _AndroidClientInfoModel({this.packageName});

  factory _AndroidClientInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AndroidClientInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$AndroidClientInfoModelToJson(this);

  @override
  List<Object?> get props => [packageName];
}

class _OauthClientModel extends Equatable {
  final String? clientId;

  final int? clientType;

  const _OauthClientModel({this.clientId, this.clientType});

  @override
  List<Object?> get props => [clientId, clientType];
}

class _ApiKeyModel extends Equatable {
  final String? currentKey;

  const _ApiKeyModel({this.currentKey});

  @override
  List<Object?> get props => [currentKey];
}

@JsonSerializable()
class _ServicesModel extends Equatable {
  @JsonKey(name: 'appinvite_service')
  final _AppinviteServiceModel? appinviteService;

  const _ServicesModel({this.appinviteService});
  @override
  List<Object?> get props => [appinviteService];

  factory _ServicesModel.fromJson(Map<String, dynamic> json) =>
      _$ServicesModelFromJson(json);

  Map<String, dynamic> toJson() => _$ServicesModelToJson(this);
}

@JsonSerializable()
class _AppinviteServiceModel extends Equatable {
  @JsonKey(name: 'other_platform_oauth_client')
  final List<Map<String, dynamic>>? otherPlatformOauthClients;
  @JsonKey(ignore: true)
  late _OtherPlatformOauthClientModel otherPlatformOauthClient;

  _AppinviteServiceModel({this.otherPlatformOauthClients}) {
    otherPlatformOauthClient = _OtherPlatformOauthClientModel(
        clientId: otherPlatformOauthClients?[0]['client_id'],
        clientType: otherPlatformOauthClients?[0]['client_type']);
  }

  factory _AppinviteServiceModel.fromJson(Map<String, dynamic> json) =>
      _$AppinviteServiceModelFromJson(json);

  Map<String, dynamic> toJson() => _$AppinviteServiceModelToJson(this);

  @override
  List<Object?> get props => [otherPlatformOauthClient];
}

class _OtherPlatformOauthClientModel extends Equatable {
  final String? clientId;

  final int? clientType;

  const _OtherPlatformOauthClientModel({this.clientId, this.clientType});

  @override
  List<Object?> get props => [clientId, clientType];
}
