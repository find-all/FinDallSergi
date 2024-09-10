import 'package:fin_dall/features/app_theme/data/models/app_theme_model.dart';
import 'package:fin_dall/features/app_theme/domain/entities/app_theme.dart';

class AppThemeMapper {
  static AppThemeModel fromEntity(AppTheme entity) {
    return AppThemeModel(
      isDarkMode: entity is LightTheme ? false : true,
    );
  }

  static AppTheme toEntity(AppThemeModel model) {
    return model.isDarkMode ? const DarkTheme() : const LightTheme();
  }
}
