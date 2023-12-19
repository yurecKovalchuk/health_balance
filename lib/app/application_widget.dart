import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

import '../features/features.dart';
import 'app.dart';

class ApplicationWidget extends StatelessWidget {
  ApplicationWidget({
    super.key,
  });

  late final GoRouter _router = _buildRouting();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData.dark(),
    );
  }

  GoRouter _buildRouting() {
    return GoRouter(initialLocation: AppRoutInfo.startScreen.path, debugLogDiagnostics: true, routes: [
      GoRoute(
        path: AppRoutInfo.startScreen.path,
        name: AppRoutInfo.startScreen.name,
        builder: (context, state) {
          return const StartScreen();
        },
      ),
      GoRoute(
        path: AppRoutInfo.healthScreen.path,
        name: AppRoutInfo.healthScreen.name,
        builder: (context, state) {
          return BlocProvider<HealthBloc>(
            create: (BuildContext context) => HealthBloc(),
            child: const HealthScreen(),
          );
        },
      ),
    ]);
  }
}
