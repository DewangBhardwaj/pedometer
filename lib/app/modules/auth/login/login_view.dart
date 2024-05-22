// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pedometer_app/app/core/theme/app_theme.dart';
// import 'package:pedometer_app/app/modules/Base/button_primary.dart';
// import 'package:go_router/go_router.dart';
// import 'package:pedometer_app/app/modules/auth/home/home_screen.dart';


// class LoginView extends ConsumerWidget {
//   const LoginView({Key? key}) : super(key: key);

//   static const routeName = '/login';

//   @override

//   Widget build(BuildContext context, WidgetRef ref) {
//     final appTheme = ref.watch(appThemeProvider);
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: appTheme.lightTheme.primaryColor,
//         body: Stack(
//           children: [
//             Image.asset(
//               'assets/images/Startup.png',
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//               fit: BoxFit.cover,
//             ),
//             Center(
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(height: 350),
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.5, // Adjust the width as needed
//                       child: buttonPrimary(
//                         context,
//                         "Let's Get Started",
//                         5,
//                         5,
//                         () {
//                           // context.push(HomeScreen.routeName);
//                           Navigator.of(context).pushNamed(HomeScreen.routeName);
//                         },
//                         color: Color.fromARGB(255, 214, 70, 133),
//                         textColor: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     // Add more widgets as needed
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cardio_credits/app/core/theme/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:cardio_credits/app/modules/auth/home/home_screen.dart';
import 'package:cardio_credits/app/modules/Base/button_primary.dart';


class LoginView extends ConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(appThemeProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.lightTheme.primaryColor,
        body: Stack(
          children: [
            Image.asset(
              'assets/images/Startup.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 350),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: buttonPrimary(
                context,
                "Let's Get Started",
                null,
                200,
                () {
                  context.push(HomeScreen.routeName);
                },
                color: Color.fromARGB(186, 243, 94, 186),
              ),
                    ),
                    SizedBox(height: 20),
                    // Add more widgets as needed
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
