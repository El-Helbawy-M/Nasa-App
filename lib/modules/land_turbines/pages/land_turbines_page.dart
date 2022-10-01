import 'package:flutter/material.dart';
import 'package:nasa_wind_app/componants/custom_icon.dart';
import 'package:nasa_wind_app/helpers/colors.dart';
import 'package:nasa_wind_app/helpers/constraints.dart';
import 'package:nasa_wind_app/helpers/text_styles.dart';
import 'package:nasa_wind_app/modules/land_turbines/models/turbine.dart';
import 'package:nasa_wind_app/modules/land_turbines/repo/turbines_repo.dart';
import 'package:nasa_wind_app/router/navigator.dart';
import 'package:nasa_wind_app/router/routes.dart';

import '../widgets/tab_card.dart';

class LandTurbinesPage extends StatefulWidget {
  const LandTurbinesPage({Key? key}) : super(key: key);

  @override
  State<LandTurbinesPage> createState() => _LandTurbinesPageState();
}

class _LandTurbinesPageState extends State<LandTurbinesPage> {
  int currentIndex = 0;
  List<String> tabs = ["All", "Active", "Inactive"];
  List<List<Turbine>> data = [
    TurbinesRepo().data,
    TurbinesRepo().dataActive,
    TurbinesRepo().dataInActive,
  ];
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
      body: SafeArea(
        child: SizedBox(
          width: MediaQueryHelper.width,
          height: MediaQueryHelper.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      CustomNavigator.push(Routes.searchMap);
                    },
                    child: Container(
                      width: MediaQueryHelper.width,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Search for suitable places\nto build your turbine",
                            style: AppTextStyles.w500
                                .copyWith(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(
                              width: 75,
                              height: 75,
                              child: customImageIconSVG(imageName: "earth"))
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.symmetric(vertical:16),
                    child:  Divider(
                      height: 10,
                      color: Colors.white,
                    ),
                  ),
                  
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
                      data[currentIndex].length,
                      (index) => GestureDetector(
                        onTap: () =>
                            CustomNavigator.push(Routes.turbineDetails),
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
                                        data[currentIndex][index].name,
                                        style: AppTextStyles.w700.copyWith(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Container(
                                        width: 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                            color: data[currentIndex][index].state == DeviceState.active? Colors.green:Colors.red,
                                            shape: BoxShape.circle),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    data[currentIndex][index].value,
                                    style: AppTextStyles.w700.copyWith(
                                        fontSize: 12, color: AppColors.hint),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: customImageIconSVG(
                                    imageName: "wind-turbine"),
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
          ),
        ),
      ),
    );
  }
}
