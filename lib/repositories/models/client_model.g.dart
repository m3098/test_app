// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientModel _$ClientModelFromJson(Map<String, dynamic> json) => ClientModel(
      clientInfo: json['client_info'] == null
          ? null
          : _ClientInfoModel.fromJson(
              json['client_info'] as Map<String, dynamic>),
      oauthClient: json['oauth_client'] == null
          ? null
          : _OauthClientModel.fromJson(
              json['oauth_client'] as Map<String, dynamic>),
      apiKeyModel: json['api_key'] == null
          ? null
          : _ApiKeyModel.fromJson(json['api_key'] as Map<String, dynamic>),
      services: json['services'] == null
          ? null
          : _ServicesModel.fromJson(json['services'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClientModelToJson(ClientModel instance) =>
    <String, dynamic>{
      'client_info': instance.clientInfo,
      'oauth_client': instance.oauthClient,
      'api_key': instance.apiKeyModel,
      'services': instance.services,
    };

_ClientInfoModel _$ClientInfoModelFromJson(Map<String, dynamic> json) =>
    _ClientInfoModel(
      mobilesdkAppId: json['mobilesdk_app_id'] as String?,
      androidClientInfo: json['android_client_info'] == null
          ? null
          : _AndroidClientInfoModel.fromJson(
              json['android_client_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClientInfoModelToJson(_ClientInfoModel instance) =>
    <String, dynamic>{
      'mobilesdk_app_id': instance.mobilesdkAppId,
      'android_client_info': instance.androidClientInfo,
    };

_AndroidClientInfoModel _$AndroidClientInfoModelFromJson(
        Map<String, dynamic> json) =>
    _AndroidClientInfoModel(
      packageName: json['package_name'] as String?,
    );

Map<String, dynamic> _$AndroidClientInfoModelToJson(
        _AndroidClientInfoModel instance) =>
    <String, dynamic>{
      'package_name': instance.packageName,
    };

_OauthClientModel _$OauthClientModelFromJson(Map<String, dynamic> json) =>
    _OauthClientModel(
      clientId: json['client_id'] as String?,
      clientType: json['client_type'] as int?,
    );

Map<String, dynamic> _$OauthClientModelToJson(_OauthClientModel instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'client_type': instance.clientType,
    };

_ApiKeyModel _$ApiKeyModelFromJson(Map<String, dynamic> json) => _ApiKeyModel(
      currentKey: json['current_key'] as String?,
    );

Map<String, dynamic> _$ApiKeyModelToJson(_ApiKeyModel instance) =>
    <String, dynamic>{
      'current_key': instance.currentKey,
    };

_ServicesModel _$ServicesModelFromJson(Map<String, dynamic> json) =>
    _ServicesModel(
      appinviteService: json['appinvite_service'] == null
          ? null
          : _AppinviteServiceModel.fromJson(
              json['appinvite_service'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServicesModelToJson(_ServicesModel instance) =>
    <String, dynamic>{
      'appinvite_service': instance.appinviteService,
    };

_AppinviteServiceModel _$AppinviteServiceModelFromJson(
        Map<String, dynamic> json) =>
    _AppinviteServiceModel(
      otherPlatformOauthClient: json['other_platform_oauth_client'] == null
          ? null
          : _OtherPlatformOauthClientModel.fromJson(
              json['other_platform_oauth_client'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppinviteServiceModelToJson(
        _AppinviteServiceModel instance) =>
    <String, dynamic>{
      'other_platform_oauth_client': instance.otherPlatformOauthClient,
    };

_OtherPlatformOauthClientModel _$OtherPlatformOauthClientModelFromJson(
        Map<String, dynamic> json) =>
    _OtherPlatformOauthClientModel(
      clientId: json['client_id'] as String?,
      clientType: json['client_type'] as int?,
    );

Map<String, dynamic> _$OtherPlatformOauthClientModelToJson(
        _OtherPlatformOauthClientModel instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'client_type': instance.clientType,
    };
