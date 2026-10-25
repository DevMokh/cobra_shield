import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';
import 'core/theme.dart';
import 'services/history_store.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: C.surface,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  await HistoryStore.instance.load();
  runApp(const CobraShieldApp());
}