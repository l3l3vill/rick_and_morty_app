import 'package:flutter/material.dart';

import '../config/constants/routes.dart';
import '../presentation/views/character_details/character_provider.dart';
import '../presentation/views/wrapper.dart';

class AppRoutes {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case Routes.characterDetailRoute:
        return MaterialPageRoute(builder: (context) {
          final arguments = settings.arguments as Map<dynamic, dynamic> ;
          return CharacterProvider(characterId: arguments['id']); 
        });

      default:
        return MaterialPageRoute(builder: (context) {
          return const Wrapper();
        });
    }
  }
}