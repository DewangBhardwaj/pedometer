import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cardio_credits/app/modules/auth/login/login_view.dart';
import 'package:cardio_credits/app/modules/splash/splash_screen.dart';
import 'package:cardio_credits/app/modules/auth/home/home_screen.dart';
import 'package:cardio_credits/app/modules/auth/leaderboard/leader_board.dart';

final globalNavigatorKey = GlobalKey<NavigatorState>();
final routerProvider = Provider<GoRouter>(
  (ref){
    return GoRouter(
      initialLocation: SplashView.routeName,
      navigatorKey: globalNavigatorKey,
      routes:[
        ///showing onboarding
        
        GoRoute(path: SplashView.routeName,
        builder: (context, state) => const SplashView(),
        ),

        GoRoute(path: LoginView.routeName,
        builder: (context, state) => const LoginView(),
        ),

        GoRoute(path: HomeScreen.routeName,
        builder: (context, state) => const HomeScreen(),
        ),

        GoRoute(path: LeaderboardScreen.routeName,
        builder: (context, state) => LeaderboardScreen(),
        ),
      ]
      );
  }
);

CustomTransitionPage appTransition(
  BuildContext context, GoRouterState state, Widget child){
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
    );
}