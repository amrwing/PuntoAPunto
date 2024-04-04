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
      },
    ),
    GoRoute(
        path: '/home_screen',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        }),
    GoRoute(
        path: '/contracts_screen',
        builder: (BuildContext context, GoRouterState state) {
          return const ContractsScreen();
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
    GoRoute(
        path: '/product_screen',
        builder: (BuildContext context, GoRouterState state) {
          return const ProductScreen();
        }),
    GoRoute(
      path: '/school',
      builder: (BuildContext context, GoRouterState state) {
        return const Escuela();
      },
    ),
    GoRoute(
      path: '/lesson1',
      builder: (BuildContext context, GoRouterState state) {
        return const Leccion1();
      },
    ),
    GoRoute(
      path: '/lesson2',
      builder: (BuildContext context, GoRouterState state) {
        return const Leccion2();
      },
    ),
    GoRoute(
      path: '/lesson3',
      builder: (BuildContext context, GoRouterState state) {
        return const Leccion3();
      },
    ),
    GoRoute(
      path: '/lesson4',
      builder: (BuildContext context, GoRouterState state) {
        return const Leccion4();
      },
    ),
    GoRoute(
      path: '/lesson5',
      builder: (BuildContext context, GoRouterState state) {
        return const Leccion5();
      },
    ),
    GoRoute(
      path: '/lesson6',
      builder: (BuildContext context, GoRouterState state) {
        return const Leccion6();
      },
    ),
    GoRoute(
      path: '/lesson7',
      builder: (BuildContext context, GoRouterState state) {
        return const Leccion7();
      },
    ),
    GoRoute(
      path: '/lesson8',
      builder: (BuildContext context, GoRouterState state) {
        return const Leccion8();
      },
    ),
    GoRoute(
      path: '/lesson9',
      builder: (BuildContext context, GoRouterState state) {
        return const Leccion9();
      },
    ),
  ],
);
