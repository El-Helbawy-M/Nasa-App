import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helpers/colors.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key? key,
    required this.name,
    required this.type,
  }) : super(key: key);
  final String name,type;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$name.$type",
      fit: BoxFit.fill,
      width: 100,
      height: 120,
    );
  }
}

Widget customImage({required String imagePath,double width = 100,double height = 100}){
  return Image.asset(width:width,height: height,"assets/images/$imagePath.jpg");
}

Widget customCircleSvgIcon(
    {String? folderPath,
    String? title,
    @required String? imageName,
    String? imagePath,
    Function? onTap,
    color,
    width,
    height,
    radius}) {
  return InkWell(
    onTap: () {
      onTap!();
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color ?? AppColors.mainColor.withOpacity(0.1),
          radius: radius ?? 24,
          child: SvgPicture.asset(
            'assets/svg/$folderPath/$imageName.svg',
          ),
        ),
        Visibility(
          visible: title != null,
          child: Column(
            children: [
              const SizedBox(
                height: 2,
              ),
              Text(
                title ?? "",
                style: const TextStyle(
                    color: AppColors.mainColor, fontWeight: FontWeight.w600 , fontSize: 10),
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),

      ],
    ),
  );
}

Widget customImageIconSVG({@required String? imageName,Color? color}) {
  return SvgPicture.asset(
    'assets/svg/$imageName.svg',
    color: color,
  );
}