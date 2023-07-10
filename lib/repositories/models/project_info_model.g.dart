// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectInfoModel _$ProjectInfoModelFromJson(Map<String, dynamic> json) =>
    ProjectInfoModel(
      projectNumber: json['project_number'] as int?,
      projectId: json['project_id'] as String?,
      storageBucket: json['storage_bucket'] as String?,
    );

Map<String, dynamic> _$ProjectInfoModelToJson(ProjectInfoModel instance) =>
    <String, dynamic>{
      'project_number': instance.projectNumber,
      'project_id': instance.projectId,
      'storage_bucket': instance.storageBucket,
    };
