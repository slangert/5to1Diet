import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'calorie_tracker_record.g.dart';

abstract class CalorieTrackerRecord
    implements Built<CalorieTrackerRecord, CalorieTrackerRecordBuilder> {
  static Serializer<CalorieTrackerRecord> get serializer =>
      _$calorieTrackerRecordSerializer;

  String? get calorieType;

  int? get caloriesPlusMinus;

  String? get calorieTypeDetail;

  DateTime? get calorieDate;

  String? get userID;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CalorieTrackerRecordBuilder builder) => builder
    ..calorieType = ''
    ..caloriesPlusMinus = 0
    ..calorieTypeDetail = ''
    ..userID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calorieTracker');

  static Stream<CalorieTrackerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CalorieTrackerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CalorieTrackerRecord._();
  factory CalorieTrackerRecord(
          [void Function(CalorieTrackerRecordBuilder) updates]) =
      _$CalorieTrackerRecord;

  static CalorieTrackerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCalorieTrackerRecordData({
  String? calorieType,
  int? caloriesPlusMinus,
  String? calorieTypeDetail,
  DateTime? calorieDate,
  String? userID,
}) {
  final firestoreData = serializers.toFirestore(
    CalorieTrackerRecord.serializer,
    CalorieTrackerRecord(
      (c) => c
        ..calorieType = calorieType
        ..caloriesPlusMinus = caloriesPlusMinus
        ..calorieTypeDetail = calorieTypeDetail
        ..calorieDate = calorieDate
        ..userID = userID,
    ),
  );

  return firestoreData;
}
