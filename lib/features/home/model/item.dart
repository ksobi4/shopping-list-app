import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
abstract class Item with _$Item {
  @HiveType(typeId: 0)
  const factory Item({
    @HiveField(0) required String name,
    @HiveField(1) required String category,
    @HiveField(2) required int amount,
    @HiveField(3) required String unit,
    @HiveField(4) @Default(false) bool isAlreadyTaken,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
