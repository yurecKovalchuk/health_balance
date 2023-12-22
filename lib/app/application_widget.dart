import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:health_balance/data/data.dart';

import '../features/features.dart';
import 'app.dart';

class ApplicationWidget extends StatelessWidget {
  ApplicationWidget({
    super.key,
  });

  late final GoRouter _router = _buildRouting();
  final _healthRepository = HealthRepository(HiveData());

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
            create: (BuildContext context) => HealthBloc(
              _healthRepository,
            ),
            child: const HealthScreen(),
          );
        },
      ),
      GoRoute(
        path: AppRoutInfo.graphHealthScreen.path,
        name: AppRoutInfo.graphHealthScreen.name,
        builder: (context, state) {
          return BlocProvider<GraphHealthBloc>(
            create: (BuildContext context) => GraphHealthBloc(
              _healthRepository,
            ),
            child: const GraphHealthScreen(),
          );
        },
      ),
    ]);
  }
}
