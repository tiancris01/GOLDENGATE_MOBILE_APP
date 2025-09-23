import 'package:auth/module_definition/auth_module_definition.dart';
import 'package:feature_commons/module_definition/module_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';
import 'module_definition/app_module_definition.dart';
import 'navigation/app_navigation_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  //TODO: enhance this approach to create the module manager
  static ModuleManager createModuleManager() {
    return ModuleManager()
      ..registerModule(AppModuleDefinition())
      ..registerModule(AuthModuleDefinition());
  }

  //Todo create a GoRouter provider whatch go router video

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //TODO: improve this approach
    final moduleManager = createModuleManager();
    final router = ref.watch(appRouterProvider(moduleManager));

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
