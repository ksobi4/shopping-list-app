part of 'items_list_bloc.dart';

@freezed
class ItemsListState with _$ItemsListState {
  const factory ItemsListState.init() = ItemsListStateInit;
  const factory ItemsListState.loading() = ItemsListStateLoading;
  const factory ItemsListState.loaded(List<ItemsList> list) =
      ItemsListStateLoaded;
  const factory ItemsListState.error(Failure failure) = ItemsListStateError;
}
