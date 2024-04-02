import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:punto_a_punto/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingScreen();
      },
    ),
    GoRoute(
        path: '/onboarding_slideshow',
        builder: (BuildContext context, GoRouterState state) {
          return const OnBoardingSlideshow();
        }),
    GoRoute(
        path: '/home_screen',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        }),
  ],
);
