import 'package:base_app/app/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:micro_app_login/app/micro_app_login_resolver.dart';
import 'package:micro_core/micro_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BaseApp {
  MyApp({Key? key}) : super(key: key) {
    super.registerInjections();
    super.registerRouters();
    super.registerListeners();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/splash',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {
        '/splash': (_, __) => const SplashPage(),
      };

  @override
  List<MicroApp> get microApps => [
        MicroAppLoginResolver(),
      ];
}
