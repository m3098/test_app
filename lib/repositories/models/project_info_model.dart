import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project_info_model.g.dart';

@JsonSerializable()
class ProjectInfoModel extends Equatable {
  @JsonKey(name: 'project_number')
  final String? projectNumber;
  @JsonKey(name: 'project_id')
  final String? projectId;
  @JsonKey(name: 'storage_bucket')
  final String? storageBucket;

  const ProjectInfoModel(
      {this.projectNumber, this.projectId, this.storageBucket});

  factory ProjectInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectInfoModelToJson(this);

  @override
  List<Object?> get props => [projectNumber, projectId, storageBucket];
}
