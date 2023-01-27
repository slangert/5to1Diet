// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foods_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FoodsRecord> _$foodsRecordSerializer = new _$FoodsRecordSerializer();

class _$FoodsRecordSerializer implements StructuredSerializer<FoodsRecord> {
  @override
  final Iterable<Type> types = const [FoodsRecord, _$FoodsRecord];
  @override
  final String wireName = 'FoodsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FoodsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.foodName;
    if (value != null) {
      result
        ..add('foodName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.foodTextServingSize;
    if (value != null) {
      result
        ..add('foodTextServingSize')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.foodGramServingSize;
    if (value != null) {
      result
        ..add('foodGramServingSize')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.foodCalories;
    if (value != null) {
      result
        ..add('foodCalories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.foodCarbs;
    if (value != null) {
      result
        ..add('foodCarbs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.foodFiber;
    if (value != null) {
      result
        ..add('foodFiber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.food5to1;
    if (value != null) {
      result
        ..add('food5to1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.foodProtein;
    if (value != null) {
      result
        ..add('foodProtein')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.foodFat;
    if (value != null) {
      result
        ..add('foodFat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.foodSaturatedFat;
    if (value != null) {
      result
        ..add('foodSaturatedFat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.foodSodium;
    if (value != null) {
      result
        ..add('foodSodium')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.foodCholesterol;
    if (value != null) {
      result
        ..add('foodCholesterol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.foodSugar;
    if (value != null) {
      result
        ..add('foodSugar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.foodImage;
    if (value != null) {
      result
        ..add('foodImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FoodsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FoodsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'foodName':
          result.foodName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'foodTextServingSize':
          result.foodTextServingSize = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'foodGramServingSize':
          result.foodGramServingSize = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'foodCalories':
          result.foodCalories = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'foodCarbs':
          result.foodCarbs = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'foodFiber':
          result.foodFiber = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'food5to1':
          result.food5to1 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'foodProtein':
          result.foodProtein = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'foodFat':
          result.foodFat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'foodSaturatedFat':
          result.foodSaturatedFat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'foodSodium':
          result.foodSodium = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'foodCholesterol':
          result.foodCholesterol = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'foodSugar':
          result.foodSugar = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'foodImage':
          result.foodImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodsRecord extends FoodsRecord {
  @override
  final String? foodName;
  @override
  final String? foodTextServingSize;
  @override
  final double? foodGramServingSize;
  @override
  final double? foodCalories;
  @override
  final double? foodCarbs;
  @override
  final double? foodFiber;
  @override
  final double? food5to1;
  @override
  final double? foodProtein;
  @override
  final double? foodFat;
  @override
  final double? foodSaturatedFat;
  @override
  final double? foodSodium;
  @override
  final double? foodCholesterol;
  @override
  final double? foodSugar;
  @override
  final String? foodImage;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FoodsRecord([void Function(FoodsRecordBuilder)? updates]) =>
      (new FoodsRecordBuilder()..update(updates))._build();

  _$FoodsRecord._(
      {this.foodName,
      this.foodTextServingSize,
      this.foodGramServingSize,
      this.foodCalories,
      this.foodCarbs,
      this.foodFiber,
      this.food5to1,
      this.foodProtein,
      this.foodFat,
      this.foodSaturatedFat,
      this.foodSodium,
      this.foodCholesterol,
      this.foodSugar,
      this.foodImage,
      this.ffRef})
      : super._();

  @override
  FoodsRecord rebuild(void Function(FoodsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodsRecordBuilder toBuilder() => new FoodsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodsRecord &&
        foodName == other.foodName &&
        foodTextServingSize == other.foodTextServingSize &&
        foodGramServingSize == other.foodGramServingSize &&
        foodCalories == other.foodCalories &&
        foodCarbs == other.foodCarbs &&
        foodFiber == other.foodFiber &&
        food5to1 == other.food5to1 &&
        foodProtein == other.foodProtein &&
        foodFat == other.foodFat &&
        foodSaturatedFat == other.foodSaturatedFat &&
        foodSodium == other.foodSodium &&
        foodCholesterol == other.foodCholesterol &&
        foodSugar == other.foodSugar &&
        foodImage == other.foodImage &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                foodName
                                                                    .hashCode),
                                                            foodTextServingSize
                                                                .hashCode),
                                                        foodGramServingSize
                                                            .hashCode),
                                                    foodCalories.hashCode),
                                                foodCarbs.hashCode),
                                            foodFiber.hashCode),
                                        food5to1.hashCode),
                                    foodProtein.hashCode),
                                foodFat.hashCode),
                            foodSaturatedFat.hashCode),
                        foodSodium.hashCode),
                    foodCholesterol.hashCode),
                foodSugar.hashCode),
            foodImage.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FoodsRecord')
          ..add('foodName', foodName)
          ..add('foodTextServingSize', foodTextServingSize)
          ..add('foodGramServingSize', foodGramServingSize)
          ..add('foodCalories', foodCalories)
          ..add('foodCarbs', foodCarbs)
          ..add('foodFiber', foodFiber)
          ..add('food5to1', food5to1)
          ..add('foodProtein', foodProtein)
          ..add('foodFat', foodFat)
          ..add('foodSaturatedFat', foodSaturatedFat)
          ..add('foodSodium', foodSodium)
          ..add('foodCholesterol', foodCholesterol)
          ..add('foodSugar', foodSugar)
          ..add('foodImage', foodImage)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FoodsRecordBuilder implements Builder<FoodsRecord, FoodsRecordBuilder> {
  _$FoodsRecord? _$v;

  String? _foodName;
  String? get foodName => _$this._foodName;
  set foodName(String? foodName) => _$this._foodName = foodName;

  String? _foodTextServingSize;
  String? get foodTextServingSize => _$this._foodTextServingSize;
  set foodTextServingSize(String? foodTextServingSize) =>
      _$this._foodTextServingSize = foodTextServingSize;

  double? _foodGramServingSize;
  double? get foodGramServingSize => _$this._foodGramServingSize;
  set foodGramServingSize(double? foodGramServingSize) =>
      _$this._foodGramServingSize = foodGramServingSize;

  double? _foodCalories;
  double? get foodCalories => _$this._foodCalories;
  set foodCalories(double? foodCalories) => _$this._foodCalories = foodCalories;

  double? _foodCarbs;
  double? get foodCarbs => _$this._foodCarbs;
  set foodCarbs(double? foodCarbs) => _$this._foodCarbs = foodCarbs;

  double? _foodFiber;
  double? get foodFiber => _$this._foodFiber;
  set foodFiber(double? foodFiber) => _$this._foodFiber = foodFiber;

  double? _food5to1;
  double? get food5to1 => _$this._food5to1;
  set food5to1(double? food5to1) => _$this._food5to1 = food5to1;

  double? _foodProtein;
  double? get foodProtein => _$this._foodProtein;
  set foodProtein(double? foodProtein) => _$this._foodProtein = foodProtein;

  double? _foodFat;
  double? get foodFat => _$this._foodFat;
  set foodFat(double? foodFat) => _$this._foodFat = foodFat;

  double? _foodSaturatedFat;
  double? get foodSaturatedFat => _$this._foodSaturatedFat;
  set foodSaturatedFat(double? foodSaturatedFat) =>
      _$this._foodSaturatedFat = foodSaturatedFat;

  double? _foodSodium;
  double? get foodSodium => _$this._foodSodium;
  set foodSodium(double? foodSodium) => _$this._foodSodium = foodSodium;

  double? _foodCholesterol;
  double? get foodCholesterol => _$this._foodCholesterol;
  set foodCholesterol(double? foodCholesterol) =>
      _$this._foodCholesterol = foodCholesterol;

  double? _foodSugar;
  double? get foodSugar => _$this._foodSugar;
  set foodSugar(double? foodSugar) => _$this._foodSugar = foodSugar;

  String? _foodImage;
  String? get foodImage => _$this._foodImage;
  set foodImage(String? foodImage) => _$this._foodImage = foodImage;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FoodsRecordBuilder() {
    FoodsRecord._initializeBuilder(this);
  }

  FoodsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foodName = $v.foodName;
      _foodTextServingSize = $v.foodTextServingSize;
      _foodGramServingSize = $v.foodGramServingSize;
      _foodCalories = $v.foodCalories;
      _foodCarbs = $v.foodCarbs;
      _foodFiber = $v.foodFiber;
      _food5to1 = $v.food5to1;
      _foodProtein = $v.foodProtein;
      _foodFat = $v.foodFat;
      _foodSaturatedFat = $v.foodSaturatedFat;
      _foodSodium = $v.foodSodium;
      _foodCholesterol = $v.foodCholesterol;
      _foodSugar = $v.foodSugar;
      _foodImage = $v.foodImage;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FoodsRecord;
  }

  @override
  void update(void Function(FoodsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FoodsRecord build() => _build();

  _$FoodsRecord _build() {
    final _$result = _$v ??
        new _$FoodsRecord._(
            foodName: foodName,
            foodTextServingSize: foodTextServingSize,
            foodGramServingSize: foodGramServingSize,
            foodCalories: foodCalories,
            foodCarbs: foodCarbs,
            foodFiber: foodFiber,
            food5to1: food5to1,
            foodProtein: foodProtein,
            foodFat: foodFat,
            foodSaturatedFat: foodSaturatedFat,
            foodSodium: foodSodium,
            foodCholesterol: foodCholesterol,
            foodSugar: foodSugar,
            foodImage: foodImage,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
