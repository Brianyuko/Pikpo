import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pikpo_app/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = appRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pikpo',
      debugShowCheckedModeBanner: kDebugMode,
      routerConfig: _appRouter,
    );
  }
}
