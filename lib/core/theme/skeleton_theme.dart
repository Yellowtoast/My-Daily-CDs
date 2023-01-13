// import 'package:flutter/material.dart';
// import 'package:skeletons/skeletons.dart';

// class MySkeletonTheme extends StatelessWidget {
//   const MySkeletonTheme({
//     Key? key,
//     required Widget child,
//   })  : _child = child,
//         super(key: key);

//   final Widget _child;

//   @override
//   Widget build(BuildContext context) {
//     return SkeletonTheme(
//         shimmerGradient: const LinearGradient(
//           colors: [
//             Color.fromARGB(255, 232, 232, 232),
//             Color.fromARGB(255, 222, 222, 222),
//             Color.fromARGB(255, 230, 230, 230),
//           ],
//           stops: [
//             0.1,
//             0.5,
//             0.9,
//           ],
//         ),
//         darkShimmerGradient: const LinearGradient(
//           colors: [
//             Color(0xFF222222),
//             Color(0xFF242424),
//             Color(0xFF2B2B2B),
//             Color(0xFF242424),
//             Color(0xFF222222),
//           ],
//           stops: [
//             0.0,
//             0.2,
//             0.5,
//             0.8,
//             1,
//           ],
//           begin: Alignment(-2.4, -0.2),
//           end: Alignment(2.4, 0.2),
//           tileMode: TileMode.clamp,
//         ),
//         child: _child);
//   }
// }
