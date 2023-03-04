// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemsList _$ItemsListFromJson(Map<String, dynamic> json) {
  return _ItemsList.fromJson(json);
}

/// @nodoc
mixin _$ItemsList {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  List<Item> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsListCopyWith<ItemsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsListCopyWith<$Res> {
  factory $ItemsListCopyWith(ItemsList value, $Res Function(ItemsList) then) =
      _$ItemsListCopyWithImpl<$Res, ItemsList>;
  @useResult
  $Res call({@HiveField(0) String name, @HiveField(1) List<Item> items});
}

/// @nodoc
class _$ItemsListCopyWithImpl<$Res, $Val extends ItemsList>
    implements $ItemsListCopyWith<$Res> {
  _$ItemsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemsListCopyWith<$Res> implements $ItemsListCopyWith<$Res> {
  factory _$$_ItemsListCopyWith(
          _$_ItemsList value, $Res Function(_$_ItemsList) then) =
      __$$_ItemsListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String name, @HiveField(1) List<Item> items});
}

/// @nodoc
class __$$_ItemsListCopyWithImpl<$Res>
    extends _$ItemsListCopyWithImpl<$Res, _$_ItemsList>
    implements _$$_ItemsListCopyWith<$Res> {
  __$$_ItemsListCopyWithImpl(
      _$_ItemsList _value, $Res Function(_$_ItemsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_$_ItemsList(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$_ItemsList implements _ItemsList {
  const _$_ItemsList(
      {@HiveField(0) required this.name,
      @HiveField(1) final List<Item> items = const []})
      : _items = items;

  factory _$_ItemsList.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsListFromJson(json);

  @override
  @HiveField(0)
  final String name;
  final List<Item> _items;
  @override
  @JsonKey()
  @HiveField(1)
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ItemsList(name: $name, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemsList &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemsListCopyWith<_$_ItemsList> get copyWith =>
      __$$_ItemsListCopyWithImpl<_$_ItemsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemsListToJson(
      this,
    );
  }
}

abstract class _ItemsList implements ItemsList {
  const factory _ItemsList(
      {@HiveField(0) required final String name,
      @HiveField(1) final List<Item> items}) = _$_ItemsList;

  factory _ItemsList.fromJson(Map<String, dynamic> json) =
      _$_ItemsList.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$$_ItemsListCopyWith<_$_ItemsList> get copyWith =>
      throw _privateConstructorUsedError;
}
