import 'package:fin_dall/features/app_theme/data/repositories/app_theme_repository_impl.dart';
import 'package:fin_dall/features/app_theme/domain/entities/app_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme_controller.g.dart';

@riverpod
class AppThemeController extends _$AppThemeController {
  @override
  AppTheme build() {
    _getAppTheme();
    return const LightTheme();
  }

  Future<void> _getAppTheme() async {
    final repository = ref.read(appThemeRepositoryProvider);

    final result = await repository.getAppTheme();
    result.when(
      success: (appTheme) {
        state = appTheme;
      },
      error: (error) {
        state = const LightTheme();
      },
    );
  }

  Future<void> toggle() async {
    final prev = state;

    switch (state) {
      case LightTheme():
        state = const DarkTheme();
        break;
      case DarkTheme():
        state = const LightTheme();
        break;
    }

    final repository = ref.read(appThemeRepositoryProvider);

    final result = await repository.setAppTheme(appTheme: state);
    result.when(
      success: (_) {},
      error: (error) {
        state = prev;
      },
    );
  }
}
