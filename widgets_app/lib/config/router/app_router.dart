

import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonScreens(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
  ]
);