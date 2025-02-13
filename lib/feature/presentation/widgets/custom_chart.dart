import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:income_expance_tracker_app/core/constant/fontsHelper.dart';

class ExpensedChart extends StatelessWidget {
  const ExpensedChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      padding: EdgeInsets.all(16),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  List<String> months = ["Mar", "Apr", "May", "Jun", "Jul", "Aug"];
                  return Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      months[value.toInt()],
                      style: TextStyle(fontSize: FontHelper.font_12, color: Colors.grey),
                    ),
                  );
                },
                interval: 1,
              ),
            ),
          ),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 800),
                FlSpot(1, 950),
                FlSpot(2, 1230),
                FlSpot(3, 1000),
                FlSpot(4, 1100),
                FlSpot(5, 1200),
              ],
              isCurved: true,
              color: Colors.teal,
              barWidth: 3,
              isStrokeCapRound: true,
              belowBarData: BarAreaData(show: true, color: Colors.teal.withOpacity(0.2)),
            ),
          ],
        ),
      ),
    );
  }
}
