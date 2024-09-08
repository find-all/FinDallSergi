// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme_model.freezed.dart';
part 'app_theme_model.g.dart';

@freezed
class AppThemeModel with _$AppThemeModel {
  const factory AppThemeModel({
    @Default(false) bool isDarkMode,
  }) = _AppThemeModel;

  factory AppThemeModel.fromJson(Map<String, dynamic> json) =>
      _$AppThemeModelFromJson(json);
}
