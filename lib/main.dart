import 'package:chaplin_cafe_app/config/routes/navigator_manager.dart';
import 'package:chaplin_cafe_app/config/theme/theme_notifier.dart';
import 'package:chaplin_cafe_app/core/constant/constant.dart';
import 'package:chaplin_cafe_app/features/di/injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'config/routes/route_name.dart';
import 'config/routes/routers.dart';
import 'core/localization/application_init.dart';

Future<void> main() async {
  await initializeDependencies();
  await ApplicationInit.init();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeNotifier>(
          create: (context) => ThemeNotifier(),
        )
      ],
      builder: (context, child) =>
          ApplicationInit.easyLocalization(child: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppName'.tr().toString(),
      theme: context.watch<ThemeNotifier>().currentTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: supportedLocales,
      locale: context.locale,
      initialRoute: RouteName.init,
      onGenerateRoute: Routers.generateRoute,
      navigatorKey: NavigatorManager.instance.navigatorGlobalKey,
      home: const Scaffold(),
    );
  }
}
