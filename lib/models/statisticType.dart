import 'package:flutter/material.dart';

import 'statistic.dart';

enum StatisticType { low, mid, hard }

String getExerciseName(StatisticType type) {
  switch (type) {
    case StatisticType.hard:
      return 'Sport';
      break;
    case StatisticType.mid:
      return 'Manger';
      break;
    case StatisticType.low:
      return 'Boisson';
      break;
    default:
      return 'All';
      break;
  }
}

class StatisticSet {
  final String name;
  final String imageUrl;
  final StatisticType statisticType;
  final Color color;

  const StatisticSet({
    required this.name,
    required this.imageUrl,
    required this.statisticType,
    required this.color,
  });
}
