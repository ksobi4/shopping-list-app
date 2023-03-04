part of 'items_list_bloc.dart';

@freezed
class ItemsListEvent with _$ItemsListEvent {
  const factory ItemsListEvent.getItemsList() = GetItemsList;
}
