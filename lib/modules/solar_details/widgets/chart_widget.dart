import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:nasa_wind_app/helpers/colors.dart';

import '../../../helpers/text_styles.dart';

class ChartWidget extends StatelessWidget {
  final List<double> yValues = [5000, 2000, 2485, 100, 354, 1936, 3420];
  final List<String> days = ["sat", "sun", "mon", "tue", "wed", "thu", "fri"];
  ChartWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.center,
        groupsSpace: 50,
        borderData: FlBorderData(
          show: true,
          border: const Border.symmetric(
            horizontal: BorderSide(width: 1, color: AppColors.fieldBorder),
          ),
        ),
        maxY: 10000,
        gridData: FlGridData(
          show: true,
          drawHorizontalLine: true,
          drawVerticalLine: false,
          horizontalInterval: 1000,
          getDrawingHorizontalLine: (value) {
            return FlLine(color: AppColors.fieldBorder);
          },
        ),
        barGroups: List.generate(
          days.length,
          (index) => BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: yValues[index].toDouble(),
                width: 6,
                color: AppColors.secondColor,
                borderRadius: BorderRadius.circular(50),
              )
            ],
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTitlesWidget: (value, meta) => SideTitleWidget(
                axisSide: meta.axisSide,
                space: 4.0,
                child: Text(
                  days[value.toInt()],
                  style: AppTextStyles.w600.copyWith(
                      fontSize: 12,
                      fontFamily: "txt",
                      color: AppColors.placeHolder),
                ),
              ),
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 50,
              interval: 1000,
              getTitlesWidget: (value, meta) => SideTitleWidget(
                axisSide: meta.axisSide,
                space: 0,
                child: Center(
                  child: Text(
                    value.toInt().toString(),
                    style: AppTextStyles.w600.copyWith(
                        fontSize: 12,
                        fontFamily: "txt",
                        color: AppColors.placeHolder),
                  ),
                ),
              ),
            ),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
      ),
    );
  }
}
