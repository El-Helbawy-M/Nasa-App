import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:nasa_wind_app/helpers/colors.dart';
import 'package:nasa_wind_app/helpers/constraints.dart';
import 'package:nasa_wind_app/helpers/images.dart';
import 'package:nasa_wind_app/router/navigator.dart';
import 'package:nasa_wind_app/router/routes.dart';

import '../../../componants/custom_icon.dart';
import '../../../helpers/text_styles.dart';
import '../../land_turbines/widgets/tab_card.dart';

class MainSolarsPage extends StatefulWidget {
  const MainSolarsPage({Key? key}) : super(key: key);

  @override
  State<MainSolarsPage> createState() => _MainSolarsPageState();
}

class _MainSolarsPageState extends State<MainSolarsPage> {
  int currentIndex = 0;
  List<String> tabs = ["All", "Active", "Inactive"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => CustomNavigator.pop(),
            icon: customImageIconSVG(
                imageName: "left", color: AppColors.mainColor)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
        width: MediaQueryHelper.width,
        height: MediaQueryHelper.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQueryHelper.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            3,
                            (index) => DetailsTapCard(
                              onTap: () => setState(() => currentIndex = index),
                              isSelected: currentIndex == index,
                              title: tabs[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Column(
                      children: List.generate(
                        4,
                        (index) => GestureDetector(
                          onTap: () =>
                              CustomNavigator.push(Routes.solarDetails),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            height: 80,
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Solar #500",
                                          style: AppTextStyles.w700.copyWith(
                                              fontSize: 18, color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Container(
                                          width: 8,
                                          height: 8,
                                          decoration: const BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "some data",
                                      style: AppTextStyles.w700.copyWith(
                                          fontSize: 12, color: AppColors.hint),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: customImageIconSVG(imageName: "solar"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
