// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../core/theme/theme_import.dart';

// Future<bool> showSelectionDialog(
//     {required String confirmText,
//     required String cancleText,
//     required String title,
//     void Function()? onConfirmTap,
//     void Function()? onCancleTap,
//     String? subtitle}) async {
//   var result = await showDialog.dialog(Dialog(
//     insetPadding: const EdgeInsets.symmetric(horizontal: 30),
//     backgroundColor: Colors.transparent,
//     child: Container(
//       height: (subtitle != null) ? 180 : 160,
//       padding: const EdgeInsets.all(24),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         color: MyColors.white,
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 35,
//                 child: Text(
//                   title,
//                   style: const TextStyle(
//                       color: MyColors.black,
//                       fontSize: 20,
//                       height: 1.5,
//                       fontWeight: FontWeight.w600),
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               (subtitle == null)
//                   ? const SizedBox.shrink()
//                   : SizedBox(
//                       height: 35,
//                       child: Text(
//                         subtitle,
//                         style: const TextStyle(
//                             color: MyColors.grey600,
//                             fontSize: 17,
//                             height: 1,
//                             fontWeight: FontWeight.w400),
//                       ),
//                     ),
//             ],
//           ),
//           Row(
//             children: [
//               Expanded(
//                 child: InkWell(
//                   onTap: onCancleTap ??
//                       () {
//                         Get.back(result: false);
//                       },
//                   child: Container(
//                     height: 50,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                         color: MyColors.grey300,
//                         borderRadius: BorderRadius.circular(10)),
//                     child: Text(
//                       cancleText,
//                       style: const TextStyle(
//                           color: MyColors.grey600,
//                           height: 1,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 width: 10,
//               ),
//               Expanded(
//                 child: InkWell(
//                   onTap: onConfirmTap ??
//                       () {
//                         Get.back(result: true);
//                       },
//                   child: Container(
//                     height: 50,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                         color: MyColors.black,
//                         borderRadius: BorderRadius.circular(10)),
//                     child: Text(
//                       confirmText,
//                       style: const TextStyle(
//                           color: MyColors.white,
//                           height: 1,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     ),
//   ));

//   result ??= false;
//   return result;
// }
