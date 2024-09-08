import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/favorite/data/repositories/favorite_repository_impl.dart';
import 'package:fin_dall/features/favorite/domain/entities/favorite.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_controller.g.dart';

@riverpod
class FavoritesController extends _$FavoritesController {
  @override
  ControllerState<List<Favorite>> build() {
    getFavorites();
    return const ControllerStateLoading();
  }

  Future<void> getFavorites() async {
    state = const ControllerStateLoading();

    final repository = ref.read(favoriteRepositoryProvider);

    final result = await repository.getFavorites();

    result.when(
      success: (favorites) {
        state = ControllerStateData(favorites);
      },
      error: (e) {
        state = ControllerStateError(e);
      },
    );
  }

  void addFavorite(Favorite favorite) {
    if (state is ControllerStateData<List<Favorite>>) {
      final favorites = (state as ControllerStateData<List<Favorite>>).data;
      state = ControllerStateData([...favorites, favorite]);
    }
  }

  void removeFavorite(Favorite favorite) {
    if (state is ControllerStateData<List<Favorite>>) {
      final favorites = (state as ControllerStateData<List<Favorite>>).data;
      state = ControllerStateData(
          favorites.where((element) => element.id != favorite.id).toList());
    }
  }
}
