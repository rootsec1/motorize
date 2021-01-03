import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motorize/routes.dart';
import 'package:motorize/theme.dart';

final MaterialApp materialApp = MaterialApp(
  theme: lightAppTheme,
  initialRoute: 'splash',
  routes: routes,
);

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(materialApp);
}
