// ignore_for_file: library_private_types_in_public_api

import 'package:equatable/equatable.dart';

class ClientModel extends Equatable {
  final _ClientInfoModel? clientInfo;
  final _OauthClientModel? oauthClient;
  final _ApiKeyModel? apiKeyModel;
  final _ServicesModel? services;

  const ClientModel(
      this.clientInfo, this.oauthClient, this.apiKeyModel, this.services);
  @override
  List<Object?> get props => [clientInfo, oauthClient, apiKeyModel, services];
}

class _ClientInfoModel extends Equatable {
  final String? mobilesdkAppId;
  final _AndroidClientInfoModel? androidClientInfo;

  const _ClientInfoModel(this.mobilesdkAppId, this.androidClientInfo);
  @override
  List<Object?> get props => [mobilesdkAppId, androidClientInfo];
}

class _AndroidClientInfoModel extends Equatable {
  final String? packageName;

  const _AndroidClientInfoModel(this.packageName);
  @override
  List<Object?> get props => [packageName];
}

class _OauthClientModel extends Equatable {
  final String? clientId;
  final int? clientType;

  const _OauthClientModel(this.clientId, this.clientType);
  @override
  List<Object?> get props => [clientId, clientType];
}

class _ApiKeyModel extends Equatable {
  final String? currentKey;

  const _ApiKeyModel(this.currentKey);
  @override
  List<Object?> get props => [currentKey];
}

class _ServicesModel extends Equatable {
  final _AppinviteServiceModel? appinviteService;

  const _ServicesModel(this.appinviteService);
  @override
  List<Object?> get props => [appinviteService];
}

class _AppinviteServiceModel extends Equatable {
  final _OtherPlatformOauthClientModel otherPlatformOauthClient;

  const _AppinviteServiceModel(this.otherPlatformOauthClient);
  @override
  List<Object?> get props => [otherPlatformOauthClient];
}

class _OtherPlatformOauthClientModel extends Equatable {
  final String? clientId;
  final int? clientType;

  const _OtherPlatformOauthClientModel(this.clientId, this.clientType);
  @override
  List<Object?> get props => [clientId, clientType];
}
