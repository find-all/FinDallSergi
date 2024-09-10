import 'package:fin_dall/features/app_language/data/repositories/app_language_repository_impl.dart';
import 'package:fin_dall/features/app_language/domain/entities/app_language.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_language_controller.g.dart';

@riverpod
class AppLanguageController extends _$AppLanguageController {
  @override
  AppLanguage build() {
    getAppLanguage();
    return const Spanish();
  }

  Future<void> getAppLanguage() async {
    final repository = ref.read(appLanguageRepositoryProvider);

    final result = await repository.getAppLanguage();

    result.when(
      success: (appLanguage) {
        state = appLanguage;
      },
      error: (error) {
        state = const Spanish();
      },
    );
  }

  Future<void> setAppLanguage({required AppLanguage appLanguage}) async {
    final prev = state;

    state = appLanguage;

    final repository = ref.read(appLanguageRepositoryProvider);

    final result = await repository.setAppLanguage(appLanguage: appLanguage);

    result.when(
      success: (_) {},
      error: (error) {
        state = prev;
      },
    );
  }
}
