import 'package:fin_dall/core/error/failure.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'paging_controller.g.dart';

sealed class PagingState<T> {
  final int page;
  final int pageSize;

  final List<T> data;

  const PagingState({
    required this.page,
    this.pageSize = 25,
    this.data = const [],
  });
}

final class Initial<T> extends PagingState<T> {
  const Initial({
    required super.page,
    super.pageSize = 25,
  });
}

final class FirstPageLoading<T> extends PagingState<T> {
  const FirstPageLoading({
    required super.page,
    super.pageSize = 25,
  });
}

final class FirstPageError<T> extends PagingState<T> {
  final Failure error;

  const FirstPageError({
    required this.error,
    required super.page,
    super.pageSize = 25,
  });
}

final class FirstPageEmpty<T> extends PagingState<T> {
  const FirstPageEmpty({
    required super.page,
    super.pageSize = 25,
  });
}

final class PageLoadedData<T> extends PagingState<T> {
  const PageLoadedData({
    required super.data,
    required super.page,
    super.pageSize = 25,
  });
}

final class PageLoading<T> extends PagingState<T> {
  const PageLoading({
    required super.page,
    required super.data,
    super.pageSize = 25,
  });
}

final class PageError<T> extends PagingState<T> {
  final Failure error;
  const PageError({
    required this.error,
    required super.page,
    required super.data,
    super.pageSize = 25,
  });
}

final class LastPage<T> extends PagingState<T> {
  const LastPage({
    required super.data,
    required super.page,
    super.pageSize = 25,
  });
}

@riverpod
class PagingController<T> extends _$PagingController<T> {
  @override
  PagingState<T> build({
    int initialPage = 1,
    int pageSize = 5,
    required Future<Result<List<T>>> Function(int page, int pageSize) fetch,
  }) {
    state = Initial<T>(page: initialPage, pageSize: pageSize);
    fetchPage();
    return state;
  }

  bool get _isLoading =>
      state is FirstPageLoading<T> || state is PageLoading<T>;

  bool get _isError => state is FirstPageError<T> || state is PageError<T>;

  bool get _isLastPage => state is LastPage<T>;

  Future<void> fetchPage() async {
    // If controller is previous loading or is last page, return
    if (_isLoading || _isLastPage) {
      return;
    }

    // Set the state to loading

    if (state is Initial<T> || state is FirstPageError<T>) {
      // Loading first page, page is initialPage
      state = FirstPageLoading<T>(page: initialPage, pageSize: pageSize);
    } else {
      // Loading page
      state = PageLoading<T>(
          page: state.page, data: state.data, pageSize: pageSize);
    }

    // Call the fetch function

    final result = await fetch(state.page, state.pageSize);

    result.when(
      success: (data) {
        // On success, when is the first page, we need to check if the data is empty
        if (state is FirstPageLoading<T>) {
          if (data.isEmpty) {
            // If data is empty, set the state to FirstPageEmpty and return
            state = FirstPageEmpty<T>(page: initialPage);
            return;
          }
        }

        // Check if the data is the last page. 2 cases: data is empty or data length is less than pageSize
        if (data.isEmpty) {
          state = LastPage<T>(page: state.page + 1, data: state.data);
          return;
        }

        final isLastPage = data.length < pageSize;

        if (isLastPage) {
          // If last page, set the state to LastPage
          state =
              LastPage<T>(page: state.page + 1, data: [...state.data, ...data]);
        } else {
          // If not last page, set the state to PageLoadedData
          state = PageLoadedData<T>(
              page: state.page + 1, data: [...state.data, ...data]);
        }
      },
      error: (e) {
        // On error, check if the error is on the first page or on a page
        if (state is FirstPageLoading<T>) {
          state = FirstPageError<T>(page: initialPage, error: e);
          return;
        }

        state = PageError<T>(page: state.page, error: e, data: state.data);
      },
    );
  }

  /// Retry the last failed request
  ///
  /// When a fetch request fails, the controller will set the state to PageError or FirstPageError
  ///
  /// This function will retry the last failed request
  ///
  Future<void> retryLastFailedRequest() async {
    fetchPage();
  }

  void clearAllItem() {
    state = FirstPageEmpty<T>(page: initialPage);
  }

  void addItem({required T item}) {
    if (state is PageLoadedData<T> || state is LastPage<T>) {
      final data = state.data;
      if (state is LastPage<T>) {
        state = LastPage<T>(page: state.page, data: [...data, item]);
      } else {
        state = PageLoadedData<T>(page: state.page, data: [...data, item]);
      }
    }
  }

  void removeItem({required bool Function(T) predicate}) {
    if (state is PageLoadedData<T> || state is LastPage<T>) {
      final data = state.data;
      final index = data.indexWhere(predicate);

      if (index != -1) {
        data.removeAt(index);
        if (state is LastPage<T>) {
          state = LastPage<T>(page: state.page, data: data);
        } else {
          state = PageLoadedData<T>(page: state.page, data: data);
        }
      }
    }
  }
}
