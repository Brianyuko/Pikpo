import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikpo_app/presentation/blocs/role/role_bloc.dart';
import 'package:pikpo_app/routes/routes.dart';
import 'package:pikpo_app/injection.dart' as di;

void main() {
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = appRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.locator<RoleBloc>(),
        )
      ],
      child: MaterialApp.router(
        title: 'Pikpo',
        debugShowCheckedModeBanner: kDebugMode,
        routerConfig: _appRouter,
      ),
    );
  }
}
