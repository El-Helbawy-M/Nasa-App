// import 'package:flutter/material.dart';
// import 'package:rental_tenant/helpers/translation/all_translation.dart';

// import '../../../components/custom_images.dart';
// import '../../../helpers/media_query_helper.dart';
// import '../../../helpers/styles.dart';
// import '../../../helpers/text_styles.dart';

// class LanguageBottomSheet extends StatefulWidget {
//   @override
//   State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
// }

// class _LanguageBottomSheetState extends State<LanguageBottomSheet> {

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Wrap(
//         direction: Axis.vertical,
//         crossAxisAlignment: WrapCrossAlignment.center,
//         children: [
//           Container(
//             width: 62,
//             height: 5,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(50),
//               color: Color(0xffE8E8E8),
//             ),
//             margin: EdgeInsets.symmetric(vertical: 20),
//           ),
//           Text(
//             allTranslations.text("change_lang"),
//             style:
//                 AppTextStyles.w700.copyWith(fontSize: 14, color: Styles.HEADER),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 24),
//             child: SizedBox(
//               height: 97,
//               width: MediaQueryHelper.width - 30,
//               child: Row(
//                 children: [
//                   SizedBox(width: 14),
//                   Expanded(
//                     child: LanguageBottomSheetOption("English", (allTranslations.locale as Locale).languageCode == "en",
//                         () async {
//                       setState(() {});
//                       allTranslations.setNewLanguage("en", true);
//                       allTranslations.setPreferredLanguage("en");
//                     }),
//                   ),
//                   Expanded(
//                     child: LanguageBottomSheetOption("العربية", (allTranslations.locale as Locale).languageCode == "ar",
//                         () async {
//                       setState(() {});
//                       allTranslations.setNewLanguage("ar", true);
//                       allTranslations.setPreferredLanguage("ar");
//                     }),
//                   ),
//                   SizedBox(width: 14),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 8),
//         ],
//       ),
//     );
//   }
// }

// class LanguageBottomSheetOption extends StatelessWidget {
//   const LanguageBottomSheetOption(
//     this.label,
//     this.selected,
//     this.onClick, {
//     Key? key,
//   }) : super(key: key);
//   final String label;
//   final bool selected;
//   final Function() onClick;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onClick,
//       child: Container(
//         height: 97,
//         margin: EdgeInsets.symmetric(horizontal: 4),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           border: selected
//               ? Border.all(width: 1, color: Styles.PRIMARY_COLOR)
//               : null,
//           color: !selected
//               ? Styles.FIELD_BORDER
//               : Styles.PRIMARY_COLOR.withOpacity(.1),
//         ),
//         child: Center(
//           child: Text(
//             label,
//             style: AppTextStyles.w700.copyWith(
//                 fontSize: 14,
//                 color: !selected ? Styles.PLACE_HOLDER : Styles.PRIMARY_COLOR),
//           ),
//         ),
//       ),
//     );
//   }
// }
