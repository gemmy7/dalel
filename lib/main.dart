import 'package:dalel/core/routing/app_router.dart';
import 'package:dalel/core/service/cach_helper.dart';
import 'package:dalel/core/service/service_locator.dart';
import 'package:dalel/dalel_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await getIt<CacheHelper>().init();
  runApp(Dalel(
    appRouter: AppRouter(),
  ));
}
