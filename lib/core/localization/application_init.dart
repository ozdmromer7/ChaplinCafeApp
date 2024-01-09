import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import '../../main.dart';
import '../constant/constant.dart';

@immutable
class ApplicationInit {
  const ApplicationInit._();

  static final easyLocalization = EasyLocalization(
    supportedLocales:supportedLocales,
    path:lang_path,
    fallbackLocale:TR_LOCALE,
    child: const MyApp(),
  );

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  }
}
