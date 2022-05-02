import 'package:flutter/material.dart';

import 'statistic.dart';

enum StatisticType { low, mid, hard }

String getExerciseName(StatisticType type) {
  switch (type) {
    case StatisticType.hard:
      return 'Hard';
      break;
    case StatisticType.mid:
      return 'Medium';
      break;
    case StatisticType.low:
      return 'Easy';
      break;
    default:
      return 'All';
      break;
  }
}

class StatisticSet {
  final String name;
  final List<Statistic> statistics;
  final String imageUrl;
  final StatisticType statisticType;
  final Color color;

  const StatisticSet({
    required this.name,
    required this.statistics,
    required this.imageUrl,
    required this.statisticType,
    required this.color,
  });

  String get totalDuration {
    final duration = statistics.fold(
      Duration.zero,
      (previous, element) => element.duration,
    );

    return duration.inMinutes.toString();
  }
}
