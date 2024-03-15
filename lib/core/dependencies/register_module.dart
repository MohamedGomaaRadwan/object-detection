import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

/// this class register the third party plugins
@module
abstract class RegisterModule {
  @lazySingleton
  GlobalKey<NavigatorState> get navigator => GlobalKey<NavigatorState>();
}
