import 'package:json_annotation/json_annotation.dart';

part 'project_model.g.dart';

@JsonSerializable()
class ProjectModel {
  final String name;
  final String description;
  final String logoPath;
  final String? google;
  final String? apple;
  final String? github;

  ProjectModel({
    required this.name,
    required this.description,
    required this.logoPath,
    this.google,
    this.apple,
    this.github,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) => _$ProjectModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProjectModelToJson(this);
}
