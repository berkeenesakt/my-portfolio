import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template/feature/home/view/home_view.dart';

class AppRouter {
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      // Add more routes here
    ],
  );

  RouterConfig<Object> config() => router;
}
