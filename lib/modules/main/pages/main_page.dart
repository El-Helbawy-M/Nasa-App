import 'package:flutter/material.dart';
import 'package:nasa_wind_app/componants/custom_icon.dart';
import 'package:nasa_wind_app/helpers/colors.dart';
import 'package:nasa_wind_app/helpers/constraints.dart';
import 'package:nasa_wind_app/helpers/icons.dart';
import 'package:nasa_wind_app/modules/main_turbine/pages/main_turbine_page.dart';

import '../../main_solars/pages/main_solars_pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  List<Widget> pages = [const MainTurbinePage(), const MainSolarsPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() => index = value);
        },
        elevation: 20,
        backgroundColor: AppColors.mainColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.4),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.wind_power), label: "Wind Turbine"),
          BottomNavigationBarItem(
              icon: Icon(Icons.solar_power), label: "Solar Energy"),
        ],
      ),
      //================================================
      body: SafeArea(
        child: SizedBox(
          width: MediaQueryHelper.width,
          height: MediaQueryHelper.height,
          child: pages[index],
        ),
      ),
    );
  }
}
