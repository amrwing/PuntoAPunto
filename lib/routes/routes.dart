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
    GoRoute(
        path: '/contracts_screen',
        builder: (BuildContext context, GoRouterState state) {
          return ContractsScreen();
        }),
    GoRoute(
        path: '/custom_provider_screen',
        builder: (BuildContext context, GoRouterState state) {
          return const CustomProviderScreen();
        }),
    GoRoute(
        path: '/register_screen',
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterScreen();
        }),
    GoRoute(
        path: '/stablish_contract_screen',
        builder: (BuildContext context, GoRouterState state) {
          return const StablishContractScreen();
        }),
  ],
);
