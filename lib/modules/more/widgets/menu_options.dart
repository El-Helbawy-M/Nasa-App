// import 'package:flutter/material.dart';
// import 'package:nasa_wind_app/modules/more/widgets/profile_menu_item.dart';

// class MenuOptions extends StatelessWidget {
//   const MenuOptions({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//         border: Border.all(width: 1, color: Styles.LIGHT_GREY_BORDER),
//         boxShadow: [
//           BoxShadow(
//             color: Color.fromRGBO(0, 0, 0, 0.05),
//             spreadRadius: 1,
//             blurRadius: 5,
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//            ProfileMenuItem("Change Theme", "lock",
//               onClick: () =>CustomNavigator.push(Routes.EDIT_PASSWORD),
//               ),
//           Divider(height: 0),
         
//           BlocBuilder<LogoutBloc, AppState>(
//             builder: (context, state) {
//               if (state is Loading) return CustomLoading();
//               return ProfileMenuItem(
//                 allTranslations.text("logout"),
//                 "logout",
//                 isLogout: true,
//                 onClick: () {
//                   SharedHelper.sharedHelper!.logout();
//                   LogoutBloc.instance.add(Click());
//                 },
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
