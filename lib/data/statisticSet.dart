import 'package:flutter/material.dart';
import 'package:my_app/models/statisticType.dart';

final statisticSets = [
  StatisticSet(
    name: 'Jus de fruit',
    imageUrl: 'assets/fruit.png',
    statisticType: StatisticType.low,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Eau',
    imageUrl: 'assets/eau.png',
    statisticType: StatisticType.low,
    color: Colors.green.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Energie/Shaker',
    imageUrl: 'assets/energie.png',
    statisticType: StatisticType.low,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Lait',
    imageUrl: 'assets/lait.png',
    statisticType: StatisticType.low,
    color: Colors.purple.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Pates',
    imageUrl: 'assets/pates.png',
    statisticType: StatisticType.mid,
    color: Colors.pink.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Legumes',
    imageUrl: 'assets/legumes.png',
    statisticType: StatisticType.mid,
    color: Colors.yellowAccent.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Fruits',
    imageUrl: 'assets/fruits.png',
    statisticType: StatisticType.mid,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Céréales complètes',
    imageUrl: 'assets/cereales.png',
    statisticType: StatisticType.mid,
    color: Colors.purple.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Oeuf',
    imageUrl: 'assets/oeuf.png',
    statisticType: StatisticType.mid,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Squats',
    imageUrl: 'assets/squat.png',
    statisticType: StatisticType.hard,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Pompe',
    imageUrl: 'assets/pushup.png',
    statisticType: StatisticType.hard,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Abdominaux',
    imageUrl: 'assets/crunch.png',
    statisticType: StatisticType.hard,
    color: Colors.teal.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Course',
    imageUrl: 'assets/course.png',
    statisticType: StatisticType.hard,
    color: Colors.purple.shade100.withOpacity(0.6),
  ),
  StatisticSet(
    name: 'Yoga',
    imageUrl: 'assets/yoga.png',
    statisticType: StatisticType.hard,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
];
