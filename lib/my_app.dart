import 'package:flutter/material.dart';
import 'package:object_detection/core/dependencies/app_root_provider.dart';

import 'core/dependencies/dependency_init.dart';
import 'ui/helper/route_generator.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _navigatorKey = getIt<GlobalKey<NavigatorState>>();

  @override
  Widget build(BuildContext context) {
    return AppRootProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigatorKey,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
