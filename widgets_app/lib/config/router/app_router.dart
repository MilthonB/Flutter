

import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      name: ButtonScreens.name,
      path: '/buttons',
      builder: (context, state) => const ButtonScreens(),
    ),
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: CardsScreen.name,
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      name: ProgressScreen.name,
      path: '/progress',
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      name: SnackbarScreen.name,
      path: '/snackbar',
      builder: (context, state) => const SnackbarScreen(),
    ),
  ]
);