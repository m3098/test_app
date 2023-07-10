import 'package:equatable/equatable.dart';

class ProjectInfoModel extends Equatable {
  final int? projectNumber;
  final String? projectId;
  final String? storageBucket;

  const ProjectInfoModel(
      {this.projectNumber, this.projectId, this.storageBucket});

  @override
  List<Object?> get props => [projectNumber, projectId, storageBucket];
}
