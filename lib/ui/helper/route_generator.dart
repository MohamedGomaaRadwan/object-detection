import 'package:flutter/material.dart';
import 'package:object_detection/features/detection/screens/object_detection_screen/view/object_detector_view.dart';
import 'package:object_detection/ui/resources/app_routes.dart';
import '../../features/home/presentation/screens/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Home Screen
      case AppRoute.homeScreen:
        return _screenInit(const HomeScreen(), settings);
      // Object Detection View
      case AppRoute.objectDetectionView:
        return _screenInit(ObjectDetectorView(), settings);

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static MaterialPageRoute<dynamic> _screenInit(Widget screen, RouteSettings settings) {
    return MaterialPageRoute<dynamic>(builder: (_) => screen, settings: settings);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<dynamic>(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('ERROR')),
      );
    });
  }
}
