import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/favorite/data/repositories/favorite_repository_impl.dart';
import 'package:fin_dall/features/favorite/domain/entities/favorite.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_favorite_controller.g.dart';

@riverpod
class DeleteFavoriteController extends _$DeleteFavoriteController {
  @override
  ControllerState<Favorite> build({
    required String id,
  }) {
    return const ControllerStateInitial();
  }

  Future<void> deleteFavorite() async {
    state = const ControllerStateLoading();

    final repository = ref.read(favoriteRepositoryProvider);

    final result = await repository.removeFavorite(
      id: id,
    );

    result.when(
      success: (favorite) {
        state = ControllerStateData(favorite);
      },
      error: (e) {
        state = ControllerStateError(e);
      },
    );
  }
}
