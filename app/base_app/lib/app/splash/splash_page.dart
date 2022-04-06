import 'package:event_bus/micro_common_event_bus.dart';
import 'package:flutter/material.dart';
import 'package:micro_core/app/micro_core_utils.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((_) => navigatorKey.currentState?.pushReplacementNamed('/login'));
    EventBus.emit('BORA PRO RIO DE JANEIRO?');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Splash')),
    );
  }
}
