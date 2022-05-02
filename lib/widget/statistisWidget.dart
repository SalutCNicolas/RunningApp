import 'package:flutter/cupertino.dart';
import 'package:my_app/data/statisticSet.dart';

import '../models/statisticType.dart';
import 'statisticSetWidget.dart';

class StatisticWidget extends StatefulWidget {
  @override
  _StatisticWidgetState createState() => _StatisticWidgetState();
}

class _StatisticWidgetState extends State<StatisticWidget> {
  StatisticType selectedType = StatisticType.low;

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: const EdgeInsets.all(16),
        sliver: SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(height: 8),
            Text(
              'Statistic',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 8),
            buildDifficultyLevel(),
            SizedBox(height: 8),
            buildWorkout(),
          ]),
        ),
      );

  Widget buildWorkout() => GestureDetector(
        onHorizontalDragEnd: swipeFunction,
        child: Column(
          children: statisticSets
              .where((element) => element.statisticType == selectedType)
              .map((statisticSet) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: StatisticSetWidget(statisticSet: statisticSet)))
              .toList(),
        ),
      );

  Widget buildDifficultyLevel() => Row(
        children: StatisticType.values.map(
          (type) {
            final name = getExerciseName(type);
            final fontWeight =
                selectedType == type ? FontWeight.bold : FontWeight.normal;

            return Expanded(
              child: Center(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => setState(() => selectedType = type),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      name,
                      style: TextStyle(fontWeight: fontWeight, fontSize: 16),
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      );

  void swipeFunction(DragEndDetails dragEndDetails) {
    final selectedIndex = StatisticType.values.indexOf(selectedType);
    final hasNext = selectedIndex < StatisticType.values.length;
    final hasPrevious = selectedIndex > 0;

    setState(() {
      if (dragEndDetails.primaryVelocity! < 0 && hasNext) {
        final nextType = StatisticType.values[selectedIndex + 1];
        selectedType = nextType;
      }
      if (dragEndDetails.primaryVelocity! > 0 && hasPrevious) {
        final previousType = StatisticType.values[selectedIndex - 1];
        selectedType = previousType;
      }
    });
  }
}
