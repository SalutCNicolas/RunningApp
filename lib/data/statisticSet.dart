import 'package:flutter/material.dart';
import 'package:my_app/models/statisticType.dart';

import 'statEnDur.dart';

final statisticSets = [
  StatisticSet(
    name: 'Core',
    statistics: statistics1,
    imageUrl: 'assets/workout1.png',
    statisticType: StatisticType.low,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Abs',
    statistics: statistics3,
    imageUrl: 'assets/crunch.png',
    statisticType: StatisticType.low,
    color: Colors.green.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Upper Body',
    statistics: statistics1,
    imageUrl: 'assets/pushup.png',
    statisticType: StatisticType.low,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Yoga',
    statistics: statistics2,
    imageUrl: 'assets/yoga.png',
    statisticType: StatisticType.low,
    color: Colors.purple.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Cardio',
    statistics: statistics3,
    imageUrl: 'assets/workout3.png',
    statisticType: StatisticType.low,
    color: Colors.red.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Stretching',
    statistics: statistics4,
    imageUrl: 'assets/workout2.png',
    statisticType: StatisticType.mid,
    color: Colors.pink.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Core',
    statistics: statistics2,
    imageUrl: 'assets/workout3.png',
    statisticType: StatisticType.mid,
    color: Colors.yellowAccent.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Cardio',
    statistics: statistics3,
    imageUrl: 'assets/workout1.png',
    statisticType: StatisticType.mid,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Yoga',
    statistics: statistics1,
    imageUrl: 'assets/yoga.png',
    statisticType: StatisticType.mid,
    color: Colors.purple.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Abs',
    statistics: statistics1,
    imageUrl: 'assets/crunch.png',
    statisticType: StatisticType.mid,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Shoulder',
    statistics: statistics2,
    imageUrl: 'assets/pushup.png',
    statisticType: StatisticType.mid,
    color: Colors.teal.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Acrobatic',
    statistics: statistics2,
    imageUrl: 'assets/workout3.png',
    statisticType: StatisticType.hard,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Hands',
    statistics: statistics2,
    imageUrl: 'assets/pushup.png',
    statisticType: StatisticType.hard,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Abs',
    statistics: statistics4,
    imageUrl: 'assets/crunch.png',
    statisticType: StatisticType.hard,
    color: Colors.teal.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Core',
    statistics: statistics1,
    imageUrl: 'assets/workout2.png',
    statisticType: StatisticType.hard,
    color: Colors.purple.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Yoga',
    statistics: statistics3,
    imageUrl: 'assets/yoga.png',
    statisticType: StatisticType.hard,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
];
