import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'item.dart';

part 'items_list.g.dart';
part 'items_list.freezed.dart';

@freezed
abstract class ItemsList with _$ItemsList {
  @HiveType(typeId: 1)
  const factory ItemsList({
    @HiveField(0) required String name,
    @HiveField(1) @Default([]) List<Item> items,
  }) = _ItemsList;

  factory ItemsList.fromJson(Map<String, dynamic> json) =>
      _$ItemsListFromJson(json);
}
