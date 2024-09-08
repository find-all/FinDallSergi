// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_language_model.freezed.dart';
part 'app_language_model.g.dart';

@freezed
class AppLanguageModel with _$AppLanguageModel {
  const factory AppLanguageModel({
    required int language,
  }) = _AppLanguageModel;

  factory AppLanguageModel.fromJson(Map<String, dynamic> json) =>
      _$AppLanguageModelFromJson(json);
}
