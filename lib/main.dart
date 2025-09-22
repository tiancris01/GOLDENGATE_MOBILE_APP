import 'package:auth/module_definition/auth_module_definition.dart';
import 'package:feature_commons/module_definition/module_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'firebase_options.dart';
import 'module_definition/app_module_definition.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  static ModuleManager createModuleManager() {
    return ModuleManager()
      ..registerModule(AuthModuleDefinition())
      ..registerModule(AppModuleDefinition());
  }

  //Todo create a GoRouter provider whatch go router video

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter(routes: []);

    return MaterialApp.router(
      title: 'GoldenGate App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
