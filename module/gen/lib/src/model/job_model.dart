import 'package:json_annotation/json_annotation.dart';

part 'job_model.g.dart';

@JsonSerializable()
class JobModel {
  final String imagePath;
  final String title;
  final String subtitle;
  final String company;
  final DateTime startDate;
  final DateTime? endDate;
  final bool isPresent;

  JobModel({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.company,
    required this.startDate,
    required this.isPresent,
    this.endDate,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) => _$JobModelFromJson(json);
  Map<String, dynamic> toJson() => _$JobModelToJson(this);
}
