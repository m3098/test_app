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
      oauthClients: (json['oauth_client'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      apiKeys: (json['api_key'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      services: json['services'] == null
          ? null
          : _ServicesModel.fromJson(json['services'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClientModelToJson(ClientModel instance) =>
    <String, dynamic>{
      'client_info': instance.clientInfo,
      'oauth_client': instance.oauthClients,
      'api_key': instance.apiKeys,
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
      otherPlatformOauthClients:
          (json['other_platform_oauth_client'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList(),
    );

Map<String, dynamic> _$AppinviteServiceModelToJson(
        _AppinviteServiceModel instance) =>
    <String, dynamic>{
      'other_platform_oauth_client': instance.otherPlatformOauthClients,
    };
