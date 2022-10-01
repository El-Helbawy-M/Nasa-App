
import 'package:flutter/material.dart';
import 'package:nasa_wind_app/helpers/colors.dart';
import 'package:nasa_wind_app/helpers/text_styles.dart';
class DetailsTapCard extends StatelessWidget {
  final bool isSelected ;
  final String title ;
  final void Function() onTap;
  const DetailsTapCard({Key? key, required this.isSelected, required this.title,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 32,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: !isSelected ? AppColors.hint : Colors.transparent,width: 2),
            color: isSelected ? AppColors.secondColor: AppColors.mainColor
          ),
          padding: const EdgeInsets.symmetric(vertical: 4 , horizontal: 16),
          child: Center(child: Text(title , style: isSelected ? AppTextStyles.w500.copyWith(color: Colors.white , fontSize: 15 ) : AppTextStyles.w600.copyWith(color: AppColors.hint , fontSize: 15 ),)),
        ),
      ),
    );
  }
}
