import 'package:flutter/material.dart';

import 'router.dart';
import 'theme.dart';

final _router = AppRouter();

/// {@template app}
/// Root widget for the application.
/// {@endtemplate}
class MyApp extends StatelessWidget {
  /// {@macro app}
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Coffee App',
      theme: MyTheme.theme,
      routerConfig: _router.config(),
    );
  }
}
