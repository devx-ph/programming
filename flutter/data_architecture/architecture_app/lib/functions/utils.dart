import 'dart:convert';

import 'package:architecture_app/models/data_model.dart';
import 'package:architecture_app/constants.dart';

Map<String, dynamic> fromStringToMap({
  required String value,
}) {
  Map<String, dynamic> map = jsonDecode(value);

  return map;
}

String fromMapToString({
  required Map<String, dynamic> map,
}) {
  String value = jsonEncode(map);

  return value;
}

DataModel fromMaptoDataModel({
  required Map<String, dynamic> map,
}) {
  return DataModel(
    activity: map[kActivity],
    type: map[kType],
    participants: map[kParticipants],
    price: map[kPrice].toString(),
    link: map[kLink],
    key: map[kKey],
    accessibility: map[kAccessibility].toString(),
  );
}
