part of 'routes.dart';

GoRouter appRouter([String? location]) => GoRouter(
      initialLocation: location ?? AppRoute.mainPage.path,
      debugLogDiagnostics: kDebugMode,
      routes: [
        GoRoute(
          path: AppRoute.mainPage.path,
          name: AppRoute.mainPage.name,
          builder: (context, state) => const MainPage(),
        ),
      ],
    );
