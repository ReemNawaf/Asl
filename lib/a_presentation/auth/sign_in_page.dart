// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:asl/a_presentation/a_shared/app_colors.dart';
// import 'package:asl/a_presentation/a_shared/constants.dart';
// import 'package:asl/a_presentation/a_shared/text_styles.dart';
// import 'package:asl/b_application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
// import 'package:asl/injection.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// @RoutePage()
// class SignInPage extends StatelessWidget {
//   const SignInPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: BlocProvider(
//         create: (context) => getIt<SignInFormBloc>(),
//         child: Container(
//           padding: const EdgeInsets.all(38.0),
//           child: SizedBox(
//             height: screenSize.height,
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   kVSpacer40,
//                   SvgPicture.asset(
//                     'assets/brand/asl.svg',
//                     colorFilter:
//                         const ColorFilter.mode(kBlacksColor, BlendMode.srcIn),
//                     height: 150,
//                     semanticsLabel: 'asl Logo',
//                   ),
//                   Text(
//                     'شُعلة',
//                     textAlign: TextAlign.center,
//                     style: headerStyle.copyWith(
//                       fontWeight: FontWeight.w800,
//                     ),
//                   ),
//                   kVSpacer20,
//                   Text(
//                     'يا أهلًا وسهلًا',
//                     style: kHeadlineSmall.copyWith(
//                       color: kBlacksColor.shade400,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   kVSpacer10,
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
