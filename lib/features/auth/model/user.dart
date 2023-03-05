import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_list/features/home/model/items_list.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
      {required String nickname,
      @Default([]) List<String> catalogsIdList}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
