// Kotlin collections ported to dart

import 'package:kt_dart/kt.dart';

void main() {

  final a = listOf(1, 2, 3, 4);
  final b = listOf(1, 2, 3, 4);
  print(a == b); // true

  final map = mapFrom({1: listOf("a", "b", "c"), 2: listOf("xx", "yy", "zz")});
  print(map.containsValue(listOf("a", "b", "c"))); // true

}