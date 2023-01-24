// import 'package:flutter/material.dart';
// // import 'package:flutter_base_project/src/constants/assets.dart';
// // import 'package:flutter_base_project/src/constants/colors.dart';
// // import 'package:flutter_base_project/src/constants/dimensions.dart';

// class NoInternet extends StatelessWidget {
//   const NoInternet({Key? key}) : super(key: key);
//   static const String route = 'no_internet_screen';

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: Stack(
//           children: <Widget>[
//             Container(
//               height: MediaQuery.of(context).size.height * 0.57,
//               color: AppColors.reneeGray100,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: Units.xLarge,
//                 vertical: Units.xLarge,
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.35,
//                   ),
//                   Image.asset(
//                     Assets.offline,
//                   ),
//                   const Expanded(
//                     child: SizedBox(),
//                   ),
//                   Text(
//                     'You’re Offline',
//                     style: Theme.of(context).textTheme.headline1!.copyWith(
//                           color: AppColors.reneeGray900,
//                         ),
//                   ),
//                   const SizedBox(
//                     height: Units.small,
//                   ),
//                   Text(
//                   'Please check your internet connection or try agin later.',
//                     textAlign: TextAlign.center,
//                     style: Theme.of(context).textTheme.subtitle2,
//                   ),
//                   const SizedBox(
//                     height: Units.xLarge,
//                   ),
//                   SizedBox(
//                     width: double.infinity,
//                     child: TextButton(
//                       onPressed: () {},
//                       child: Text(
//                         'Reload',
//                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
//                               color: AppColors.reneeBlack,
//                               fontWeight: FontWeight.w600,
//                             ),
//                       ),
//                       style: TextButton.styleFrom(
//                         side: const BorderSide(
//                           color: AppColors.reneeGray300,
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       );
// }
