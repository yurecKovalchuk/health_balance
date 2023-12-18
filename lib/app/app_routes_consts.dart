class RouteData {
  final String name;
  final String path;

  const RouteData({
    required this.name,
    required this.path,
  });
}

abstract class AppRoutInfo {
  static const startScreen = RouteData(
    name: 'start_screen',
    path: '/',
  );
  static const healthScreen = RouteData(
    name: 'health_screen',
    path: '/health',
  );
}
