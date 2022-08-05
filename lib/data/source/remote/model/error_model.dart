import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ErrorModel {
  String statusMessage;
  int statusCode;

  ErrorModel(this.statusMessage, this.statusCode);
  factory ErrorModel.fromJson(json) => _$ErrorModelFromJson(json);
}
