// ignore_for_file: library_private_types_in_public_api

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'client_model.g.dart';

@JsonSerializable()
class ClientModel extends Equatable {
  @JsonKey(name: 'client_info')
  final _ClientInfoModel? clientInfo;

  @JsonKey(name: 'oauth_client')
  final _OauthClientModel? oauthClient;

  @JsonKey(name: 'api_key')
  final _ApiKeyModel? apiKeyModel;

  @JsonKey(name: 'services')
  final _ServicesModel? services;

  const ClientModel(
      {this.clientInfo, this.oauthClient, this.apiKeyModel, this.services});

  factory ClientModel.fromJson(Map<String, dynamic> json) =>
      _$ClientModelFromJson(json);

  Map<String, dynamic> toJson() => _$ClientModelToJson(this);

  @override
  List<Object?> get props => [clientInfo, oauthClient, apiKeyModel, services];
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

@JsonSerializable()
class _OauthClientModel extends Equatable {
  @JsonKey(name: 'client_id')
  final String? clientId;
  @JsonKey(name: 'client_type')
  final int? clientType;

  const _OauthClientModel({this.clientId, this.clientType});

  factory _OauthClientModel.fromJson(Map<String, dynamic> json) =>
      _$OauthClientModelFromJson(json);

  Map<String, dynamic> toJson() => _$OauthClientModelToJson(this);

  @override
  List<Object?> get props => [clientId, clientType];
}

@JsonSerializable()
class _ApiKeyModel extends Equatable {
  @JsonKey(name: 'current_key')
  final String? currentKey;

  const _ApiKeyModel({this.currentKey});

  factory _ApiKeyModel.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiKeyModelToJson(this);

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
  final _OtherPlatformOauthClientModel? otherPlatformOauthClient;

  const _AppinviteServiceModel({this.otherPlatformOauthClient});

  factory _AppinviteServiceModel.fromJson(Map<String, dynamic> json) =>
      _$AppinviteServiceModelFromJson(json);

  Map<String, dynamic> toJson() => _$AppinviteServiceModelToJson(this);

  @override
  List<Object?> get props => [otherPlatformOauthClient];
}

@JsonSerializable()
class _OtherPlatformOauthClientModel extends Equatable {
  @JsonKey(name: 'client_id')
  final String? clientId;
  @JsonKey(name: 'client_type')
  final int? clientType;

  const _OtherPlatformOauthClientModel({this.clientId, this.clientType});

  factory _OtherPlatformOauthClientModel.fromJson(Map<String, dynamic> json) =>
      _$OtherPlatformOauthClientModelFromJson(json);

  Map<String, dynamic> toJson() => _$OtherPlatformOauthClientModelToJson(this);
  @override
  List<Object?> get props => [clientId, clientType];
}
