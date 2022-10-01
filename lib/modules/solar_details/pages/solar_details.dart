import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nasa_wind_app/componants/custom_icon.dart';
import 'package:nasa_wind_app/helpers/colors.dart';
import 'package:nasa_wind_app/helpers/constraints.dart';
import 'package:nasa_wind_app/helpers/images.dart';
import 'package:nasa_wind_app/helpers/text_styles.dart';
import 'package:nasa_wind_app/modules/solar_details/widgets/chart_widget.dart';

import '../../../router/navigator.dart';

class SolarDetailsPage extends StatelessWidget {
  const SolarDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => CustomNavigator.pop(),
            icon: customImageIconSVG(
                imageName: "left", color: AppColors.mainColor)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: AppColors.backgroundColor,
        body: SizedBox(
          width: MediaQueryHelper.width,
          height: MediaQueryHelper.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: MediaQueryHelper.width,
                  padding: const EdgeInsets.all(20),
                  color: AppColors.mainColor,
                  child: Image.asset(AppImages.panels[Random().nextInt(2)]),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                              child: InfoCard(
                            title: "Battery Charge",
                            value: "85%",
                            iconPath: "battery-charge",
                          )),
                          SizedBox(width: 8),
                          Expanded(
                              child: InfoCard(
                            title: "Temperature",
                            value: "20C",
                            iconPath: "temperature",
                          )),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 300,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Total Energy",
                                      style: AppTextStyles.w800.copyWith(
                                          fontSize: 12,
                                          color: AppColors.secondColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                               "15295 w/h",
                              style: AppTextStyles.w800.copyWith(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: "text"),
                            ),
                            SizedBox(height: 24),
                            Expanded(child: ChartWidget()),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.title,
    required this.value,
    required this.iconPath,
  }) : super(key: key);
  final String iconPath, title, value;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.mainColor,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: customImageIconSVG(imageName: iconPath),
          ),
          const SizedBox(width: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTextStyles.w700
                    .copyWith(fontSize: 16, color: AppColors.secondColor),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: AppTextStyles.w700
                    .copyWith(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
