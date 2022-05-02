import 'package:flutter/material.dart';
import 'package:my_app/models/statisticType.dart';

class StatisticSetWidget extends StatelessWidget {
  final StatisticSet statisticSet;

  const StatisticSetWidget({
    required this.statisticSet,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 100,
          decoration: BoxDecoration(
            color: statisticSet.color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Expanded(flex: 3, child: buildText()),
              Expanded(child: Image.asset(statisticSet.imageUrl))
            ],
          ),
        ),
      );

  Widget buildText() {
    final stat = statisticSet.statistics.length;
    final minutes = statisticSet.totalDuration;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(statisticSet.name,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
        SizedBox(height: 10),
        Text('$stat Statistic $minutes Mins'),
      ],
    );
  }
}
