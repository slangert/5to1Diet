import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'foods_record.g.dart';

abstract class FoodsRecord implements Built<FoodsRecord, FoodsRecordBuilder> {
  static Serializer<FoodsRecord> get serializer => _$foodsRecordSerializer;

  String? get foodName;

  String? get foodTextServingSize;

  double? get foodGramServingSize;

  double? get foodCalories;

  double? get foodCarbs;

  double? get foodFiber;

  double? get food5to1;

  double? get foodProtein;

  double? get foodFat;

  double? get foodSaturatedFat;

  double? get foodSodium;

  @BuiltValueField(wireName: 'FoodCholesterol')
  int? get foodCholesterol;

  @BuiltValueField(wireName: 'FoodSugar')
  double? get foodSugar;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FoodsRecordBuilder builder) => builder
    ..foodName = ''
    ..foodTextServingSize = ''
    ..foodGramServingSize = 0.0
    ..foodCalories = 0.0
    ..foodCarbs = 0.0
    ..foodFiber = 0.0
    ..food5to1 = 0.0
    ..foodProtein = 0.0
    ..foodFat = 0.0
    ..foodSaturatedFat = 0.0
    ..foodSodium = 0.0
    ..foodCholesterol = 0
    ..foodSugar = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Foods');

  static Stream<FoodsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FoodsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FoodsRecord._();
  factory FoodsRecord([void Function(FoodsRecordBuilder) updates]) =
      _$FoodsRecord;

  static FoodsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFoodsRecordData({
  String? foodName,
  String? foodTextServingSize,
  double? foodGramServingSize,
  double? foodCalories,
  double? foodCarbs,
  double? foodFiber,
  double? food5to1,
  double? foodProtein,
  double? foodFat,
  double? foodSaturatedFat,
  double? foodSodium,
  int? foodCholesterol,
  double? foodSugar,
}) {
  final firestoreData = serializers.toFirestore(
    FoodsRecord.serializer,
    FoodsRecord(
      (f) => f
        ..foodName = foodName
        ..foodTextServingSize = foodTextServingSize
        ..foodGramServingSize = foodGramServingSize
        ..foodCalories = foodCalories
        ..foodCarbs = foodCarbs
        ..foodFiber = foodFiber
        ..food5to1 = food5to1
        ..foodProtein = foodProtein
        ..foodFat = foodFat
        ..foodSaturatedFat = foodSaturatedFat
        ..foodSodium = foodSodium
        ..foodCholesterol = foodCholesterol
        ..foodSugar = foodSugar,
    ),
  );

  return firestoreData;
}
