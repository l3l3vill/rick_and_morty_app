import 'package:flutter/material.dart';

import 'navigation/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RickAndMortyApp',
      theme: ThemeData(
        primarySwatch: Colors.blue ),
        onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}




