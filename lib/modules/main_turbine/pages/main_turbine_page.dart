import 'package:flutter/material.dart';
import 'package:nasa_wind_app/helpers/colors.dart';
import 'package:nasa_wind_app/helpers/constraints.dart';
import 'package:nasa_wind_app/helpers/images.dart';
import 'package:nasa_wind_app/router/navigator.dart';
import 'package:nasa_wind_app/router/routes.dart';

import '../../../helpers/text_styles.dart';

class MainTurbinePage extends StatelessWidget {
  const MainTurbinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        children:  [
          TurbineCategoryCard(image: AppImages.turbineBackgrounds[2],title: "Onshore",),
          const SizedBox(height: 24),
          TurbineCategoryCard(image: AppImages.turbineBackgrounds[1],title: "Offshore",),
        ],
      ),
    );
  }
}

class TurbineCategoryCard extends StatelessWidget {
  const TurbineCategoryCard({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String image,title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => CustomNavigator.push(Routes.landTurbine),
      child: Container(
        height: 300,
        width: MediaQueryHelper.width,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(15)),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQueryHelper.width,
                  ),
                  Text(
                    title,
                    style: AppTextStyles.w700
                        .copyWith(fontSize: 22, color: AppColors.secondColor),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "onshore wind energy is the power that's generated by wind turbines located on land driven by the natural movement of the air",
                    style: AppTextStyles.w500
                        .copyWith(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
