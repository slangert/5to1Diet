// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calorie_tracker_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CalorieTrackerRecord> _$calorieTrackerRecordSerializer =
    new _$CalorieTrackerRecordSerializer();

class _$CalorieTrackerRecordSerializer
    implements StructuredSerializer<CalorieTrackerRecord> {
  @override
  final Iterable<Type> types = const [
    CalorieTrackerRecord,
    _$CalorieTrackerRecord
  ];
  @override
  final String wireName = 'CalorieTrackerRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CalorieTrackerRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.calorieType;
    if (value != null) {
      result
        ..add('calorieType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.caloriesPlusMinus;
    if (value != null) {
      result
        ..add('caloriesPlusMinus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.calorieTypeDetail;
    if (value != null) {
      result
        ..add('calorieTypeDetail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.calorieDate;
    if (value != null) {
      result
        ..add('calorieDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.userID;
    if (value != null) {
      result
        ..add('userID')
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
  CalorieTrackerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CalorieTrackerRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'calorieType':
          result.calorieType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'caloriesPlusMinus':
          result.caloriesPlusMinus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'calorieTypeDetail':
          result.calorieTypeDetail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'calorieDate':
          result.calorieDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'userID':
          result.userID = serializers.deserialize(value,
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

class _$CalorieTrackerRecord extends CalorieTrackerRecord {
  @override
  final String? calorieType;
  @override
  final int? caloriesPlusMinus;
  @override
  final String? calorieTypeDetail;
  @override
  final DateTime? calorieDate;
  @override
  final String? userID;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CalorieTrackerRecord(
          [void Function(CalorieTrackerRecordBuilder)? updates]) =>
      (new CalorieTrackerRecordBuilder()..update(updates))._build();

  _$CalorieTrackerRecord._(
      {this.calorieType,
      this.caloriesPlusMinus,
      this.calorieTypeDetail,
      this.calorieDate,
      this.userID,
      this.ffRef})
      : super._();

  @override
  CalorieTrackerRecord rebuild(
          void Function(CalorieTrackerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalorieTrackerRecordBuilder toBuilder() =>
      new CalorieTrackerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalorieTrackerRecord &&
        calorieType == other.calorieType &&
        caloriesPlusMinus == other.caloriesPlusMinus &&
        calorieTypeDetail == other.calorieTypeDetail &&
        calorieDate == other.calorieDate &&
        userID == other.userID &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, calorieType.hashCode),
                        caloriesPlusMinus.hashCode),
                    calorieTypeDetail.hashCode),
                calorieDate.hashCode),
            userID.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CalorieTrackerRecord')
          ..add('calorieType', calorieType)
          ..add('caloriesPlusMinus', caloriesPlusMinus)
          ..add('calorieTypeDetail', calorieTypeDetail)
          ..add('calorieDate', calorieDate)
          ..add('userID', userID)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CalorieTrackerRecordBuilder
    implements Builder<CalorieTrackerRecord, CalorieTrackerRecordBuilder> {
  _$CalorieTrackerRecord? _$v;

  String? _calorieType;
  String? get calorieType => _$this._calorieType;
  set calorieType(String? calorieType) => _$this._calorieType = calorieType;

  int? _caloriesPlusMinus;
  int? get caloriesPlusMinus => _$this._caloriesPlusMinus;
  set caloriesPlusMinus(int? caloriesPlusMinus) =>
      _$this._caloriesPlusMinus = caloriesPlusMinus;

  String? _calorieTypeDetail;
  String? get calorieTypeDetail => _$this._calorieTypeDetail;
  set calorieTypeDetail(String? calorieTypeDetail) =>
      _$this._calorieTypeDetail = calorieTypeDetail;

  DateTime? _calorieDate;
  DateTime? get calorieDate => _$this._calorieDate;
  set calorieDate(DateTime? calorieDate) => _$this._calorieDate = calorieDate;

  String? _userID;
  String? get userID => _$this._userID;
  set userID(String? userID) => _$this._userID = userID;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CalorieTrackerRecordBuilder() {
    CalorieTrackerRecord._initializeBuilder(this);
  }

  CalorieTrackerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _calorieType = $v.calorieType;
      _caloriesPlusMinus = $v.caloriesPlusMinus;
      _calorieTypeDetail = $v.calorieTypeDetail;
      _calorieDate = $v.calorieDate;
      _userID = $v.userID;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalorieTrackerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CalorieTrackerRecord;
  }

  @override
  void update(void Function(CalorieTrackerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalorieTrackerRecord build() => _build();

  _$CalorieTrackerRecord _build() {
    final _$result = _$v ??
        new _$CalorieTrackerRecord._(
            calorieType: calorieType,
            caloriesPlusMinus: caloriesPlusMinus,
            calorieTypeDetail: calorieTypeDetail,
            calorieDate: calorieDate,
            userID: userID,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
