// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<String>? get gallery => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  List<int>? get availableSizes => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? tag,
      String? image,
      List<String>? gallery,
      String? description,
      double? price,
      List<int>? availableSizes,
      String? symbol});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tag = freezed,
    Object? image = freezed,
    Object? gallery = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? availableSizes = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      gallery: freezed == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      availableSizes: freezed == availableSizes
          ? _value.availableSizes
          : availableSizes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? tag,
      String? image,
      List<String>? gallery,
      String? description,
      double? price,
      List<int>? availableSizes,
      String? symbol});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tag = freezed,
    Object? image = freezed,
    Object? gallery = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? availableSizes = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_$ProductModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      gallery: freezed == gallery
          ? _value._gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      availableSizes: freezed == availableSizes
          ? _value._availableSizes
          : availableSizes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {this.id,
      this.name,
      this.tag,
      this.image,
      final List<String>? gallery,
      this.description,
      this.price,
      final List<int>? availableSizes,
      this.symbol})
      : _gallery = gallery,
        _availableSizes = availableSizes;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? tag;
  @override
  final String? image;
  final List<String>? _gallery;
  @override
  List<String>? get gallery {
    final value = _gallery;
    if (value == null) return null;
    if (_gallery is EqualUnmodifiableListView) return _gallery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  final double? price;
  final List<int>? _availableSizes;
  @override
  List<int>? get availableSizes {
    final value = _availableSizes;
    if (value == null) return null;
    if (_availableSizes is EqualUnmodifiableListView) return _availableSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? symbol;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, tag: $tag, image: $image, gallery: $gallery, description: $description, price: $price, availableSizes: $availableSizes, symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._gallery, _gallery) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._availableSizes, _availableSizes) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      tag,
      image,
      const DeepCollectionEquality().hash(_gallery),
      description,
      price,
      const DeepCollectionEquality().hash(_availableSizes),
      symbol);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {final int? id,
      final String? name,
      final String? tag,
      final String? image,
      final List<String>? gallery,
      final String? description,
      final double? price,
      final List<int>? availableSizes,
      final String? symbol}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get tag;
  @override
  String? get image;
  @override
  List<String>? get gallery;
  @override
  String? get description;
  @override
  double? get price;
  @override
  List<int>? get availableSizes;
  @override
  String? get symbol;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
