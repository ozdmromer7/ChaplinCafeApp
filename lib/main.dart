import 'package:chaplin_cafe_app/core/constant/constant.dart';
import 'package:chaplin_cafe_app/features/di/injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'core/localization/application_init.dart';

Future<void> main() async {
  await initializeDependencies();
  await ApplicationInit.init();
  runApp(ApplicationInit.easyLocalization);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppName'.tr().toString(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales:supportedLocales,
      locale: context.locale,
      home: const Scaffold(),
    );
  }
}




