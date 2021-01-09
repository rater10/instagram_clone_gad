import 'package:flutter/cupertino.dart';
import 'package:instagram_clone_gad/src/presentation/home.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';

  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) {
      return const Home();
    }
  };
}