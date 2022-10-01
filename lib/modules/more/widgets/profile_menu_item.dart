// import 'package:flutter/material.dart';
// import 'package:rental_tenant/main_blocs/main_app_bloc.dart';

// import '../../../components/custom_images.dart';
// import '../../../helpers/styles.dart';
// import '../../../helpers/text_styles.dart';

// class ProfileMenuItem extends StatelessWidget {
//   const ProfileMenuItem(this.title, this.prefixIconName,
//       {Key? key, this.onClick,this.suffixWidget , this.isLogout = false})
//       : super(key: key);
//   final String title, prefixIconName;
//   final Function()? onClick;
//   final Widget? suffixWidget;
//   final bool? isLogout ;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onClick,
//       child: SizedBox(
//         height: 68,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24),
//           child: Row(
//             children: [
//               customImageIconSVG(imageName: prefixIconName),
//               SizedBox(width: 24),
//               Text(
//                 title,
//                 style: AppTextStyles.w600.copyWith(
//                   fontSize: 14,
//                   color: Styles.HEADER,
//                 ),
//               ),
//               Expanded(child: SizedBox()),
//               suffixWidget ?? Container(),
//               SizedBox(width: 12,),
//               Visibility(
//                   visible: isLogout == false,
//                   child: customImageIconSVG(imageName: mainAppBloc.lang.valueOrNull == 'ar' ? 'arrow-up-3':'arrow-up-2'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
