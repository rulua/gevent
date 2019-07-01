import 'package:flutter/services.dart';
import 'dart:async' show Future;
Future<String> loadEvent() async {
  return await rootBundle.loadString('assert/data/events.json');
}