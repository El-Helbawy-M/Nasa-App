// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:rental_tenant/core/app_core.dart';
// import 'package:rental_tenant/helpers/media_query_helper.dart';

// import '../../../core/app_color_shuffler.dart';
// import '../../../core/app_state.dart';
// import '../../../helpers/styles.dart';
// import '../../../helpers/text_styles.dart';
// import '../../../main_blocs/user_bloc.dart';
// import '../../login/model/user_model.dart';

// class TenantInfoContainer extends StatelessWidget {
//   const TenantInfoContainer({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<UserBloc, AppState>(
//       builder: (context, state) {
//         UserModel? data;
//         if (state is Done) data = state.model as UserModel;
//         return Container(
//             height: 85,
//             width: MediaQueryHelper.width,
//             padding: EdgeInsets.symmetric(horizontal: 24),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(15),
//               boxShadow: [
//                 BoxShadow(
//                   color: Color.fromRGBO(0, 0, 0, 0.05),
//                   spreadRadius: 1,
//                   blurRadius: 10,
//                 ),
//               ],
//             ),
//             child: Row(
//               children: [
//                 Container(
//                   width: 52,
//                   height: 52,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: AppColorShuffler().shuffleColor()),
//                   child: Center(
//                     child: Text(
//                       "${data!.userData!.firstName != null ? data.userData!.firstName!.substring(0, 2).toUpperCase() : "US"}",
//                       style: TextStyle(
//                           fontWeight: FontWeight.w900,
//                           fontSize: 12,
//                           color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 16),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       state is Done
//                           ? AppCore.getFullName(list: [
//                               data.userData!.firstName,
//                               data.userData!.middleName,
//                               data.userData!.lastName
//                             ])
//                           : "",
//                       style: AppTextStyles.w700
//                           .copyWith(fontSize: 16, color: Styles.HEADER),
//                     ),
//                     SizedBox(height: 4),
//                     Text(
//                       state is Done ? "${data.userData!.email}" : "",
//                       style: AppTextStyles.w600
//                           .copyWith(fontSize: 12, color: Styles.PLACE_HOLDER),
//                     ),
//                   ],
//                 ),
//               ],
//             ));
//       },
//     );
//   }
// }
