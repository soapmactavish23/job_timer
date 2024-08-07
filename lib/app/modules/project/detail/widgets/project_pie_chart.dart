import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProjectPieChart extends StatelessWidget {
  final int projectEstimate;
  final int totalTask;

  const ProjectPieChart(
      {super.key, required this.projectEstimate, required this.totalTask});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final residual = (projectEstimate - totalTask);

    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        fit: StackFit.loose,
        children: [
          PieChart(PieChartData(sections: [
            PieChartSectionData(
              value: totalTask.toDouble(),
              color: theme.primaryColor,
              title: '${totalTask}h',
              titleStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            PieChartSectionData(
              value: residual.toDouble(),
              color: theme.primaryColorLight,
              title: '${residual}h',
              titleStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ])),
          Align(
            alignment: Alignment.center,
            child: Text(
              '${projectEstimate}h',
              style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
