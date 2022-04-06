import 'dart:developer';
import 'package:event_bus/micro_common_event_bus.dart';
import 'package:micro_core/micro_core.dart';

import 'features/login_page.dart';

class MicroAppLoginResolver implements MicroApp {
  @override
  String get microAppName => 'micro_app_login';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        '/login': (context, args) => const LoginPage(),
      };

  @override
  void Function() get injectionsRegister => () {};

  @override
  void Function() get createListener => () {
        EventBus.listen((event) {
          log('LoginResolver: $event');
        });
      };
}
