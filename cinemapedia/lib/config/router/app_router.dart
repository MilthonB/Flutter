import 'package:cinemapedia/presentations/views/views.dart';
import 'package:go_router/go_router.dart';

import '../../presentations/screens/movies/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  // StatefulShellRoute(branches: [], navigatorContainerBuilder: (context, navigationShell, children) {

  // },)

  ShellRoute(
    builder: (context, state, child) {
      return HomeScreen(childView: child);
    },
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const HomeView();
        },
        routes: [
           GoRoute(
          path: 'movie/:id',
          name: MovieScreen.name,
          builder: (context, state) {
            final movieId = state.pathParameters['id'] ?? 'no-id';
            return MovieScreen(movieId: movieId);
          },
        ),

        ]
      ),
      GoRoute(
        path: '/favorites',
        builder: (context, state) {
          return const FavoritdView();
        },
      ),

    ],
  )

  // GoRoute(
  //     path: '/',
  //     name: HomeScreen.name,
  //     builder: (context, state) => const HomeScreen( childView: HomeView(), ),
  //     routes: [
  //       GoRoute(
  //         path: 'movie/:id',
  //         name: MovieScreen.name,
  //         builder: (context, state) {
  //           final movieId = state.pathParameters['id'] ?? 'no-id';
  //           return MovieScreen(movieId: movieId);
  //         },
  //       ),
  //     ]),
]);
