import 'package:fin_dall/features/app_language/data/models/app_language_model.dart';
import 'package:fin_dall/features/app_language/domain/entities/app_language.dart';

class AppLanguageMapper {
  static AppLanguageModel fromEntity(AppLanguage entity) {
    if (entity is Spanish) {
      return const AppLanguageModel(language: 0);
    } else {
      return const AppLanguageModel(language: 1);
    }
  }

  static AppLanguage toEntity(AppLanguageModel model) {
    switch (model.language) {
      case 0:
        return const Spanish();
      case 1:
        return const English();
      default:
        return const Spanish();
    }
  }
}
