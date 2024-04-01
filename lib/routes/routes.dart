import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:punto_a_punto/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
  ],
);
